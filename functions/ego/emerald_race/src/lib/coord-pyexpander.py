def _isint(x):
    """Check if x is an int

    Args:
        x (str): A numeric representation of a number

    Returns:
        True if x is an integer
        False if x is not an integer
    """
    try:
        a, b = float(x), int(x)
    except ValueError:
        return False
    else:
        return a == b

def _tonum(x):
    """Turn x into an int or float depending on its representation

    Args:
        x (str): A numeric representation of a number

    Returns:
        int(x) if x is an integer
        float(x) if x is a floating point number

    Raises:
        ValueError if x is neither an integer or floating point number
    """
    if _isint(x):
        return int(x)
    else:
        return float(x)

class Coord:
    """A value container for Minecraft coordinates

    Attributes:
        value (int, float): The value of this coordinate
        prefix (str): The prefix of this coordinate. Can be either "", "~", or "^"
    """

    def __init__(self, value=0):
        """Create a coordinate from a given value

        Args:
            value (optional): Value of this coordinate. If a float or int, this coordinate will be global.
                If a str, value should be a number, optionally prefixed by one of ~ (relative) or ^ (local).
        """
        if isinstance(value, str):
            if value[0] in "~^":
                self.value = _tonum(value[1:])
                self.prefix = value[0]
            else:
                self.value = _tonum(value)
                self.prefix = ""
            return

        if isinstance(value, (int, float)):
            self.value = value
            self.prefix = ""
            return

        raise TypeError("Unsupported type: {}".format(type(value)))

    def copy(self):
        """Return a copy of this coordinate

        Returns:
            A Coord object containing the same value and prefix as self
        """
        copy_coord = Coord(self.value)
        copy_coord.prefix = self.prefix
        return copy_coord

    def __str__(self):
        return self.prefix + str(self.value)

    def __repr__(self):
        return "Coord('{}')".format(str(self))

    def is_global(self):
        """Check if this coordinate is global

        Returns:
            True if this is a global coordinate, False otherwise
        """
        return self.prefix == ""

    def is_relative(self):
        """Check if this coordinate is relative

        Returns:
            True if this is a relative coordinate, False otherwise
        """
        return self.prefix == "~"

    def is_local(self):
        """Check if this coordinate is local

        Returns:
            True if this is a local coordinate, False otherwise
        """
        return self.prefix == "^"

    def relative(self):
      """Deprecated function. Reroutes calls to is_relative()"""
      return self.is_relative()


#    def __set__(self, instance, value):
#        if isinstance(value, Coord):
#            self.value = value.value
#            self.prefix = value.prefix
#        elif isinstance(value, (int, float)):
#            self.value = value
#            self.prefix = ""
#        elif isinstance(value, str):
#            if value[0] in "~^":
#                self.value = _tonum(value[1:])
#                self.prefix = value[0]
#            else:
#                self.value = _tonum(value)
#                self.prefix = ""
#        else:
#            raise TypeError("Type 'Coord' can only be assigned to 'int', 'float', 'str', or 'Coord'")


    """In all numeric type comparisons, the prefix of the Coord is ignored

    Examples:
        (~15 == ^15) == True
        (~10 == ~15) == False
        (^3 == 3) == True
    """

$py(comparisons = {"__lt__":"<", "__le__":"<=", "__eq__":"==", "__ne__":"!=", "__gt__":">", "__ge__":">="})

$for(name, symbol in comparisons.items())
    def $(name)(self, other):
        if isinstance(other, Coord):
            return self.value $(symbol) other.value
        elif isinstance(other, (int, float)):
            return self.value $(symbol) other
        else:
            return NotImplemented
$endfor

    """In all numeric type operations, the prefix of the result is inherited from the left of the operator.

    Examples:
        Note: === is used to signify that the prefixes are included in the equality, unlike the comparison operations above
        ~15 + ^5 === ~20
        ^15 - ~5 === ~10
         15 / ^5 ===  3
    """

$py(ops = {"add__":"+", "sub__":"-", "mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Coord):
            result = self.value $(symbol) other.value
        elif isinstance(other, (int, float)):
            result = self.value $(symbol) other
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval.prefix = self.prefix
        return new_coordval

    def __r$(name)(self, other):
        if isinstance(other, (int, float)):
            result = other $(symbol) self.value
        else:
            return NotImplemented
        new_coordval = Coord(result)
        return new_coordval

    def __i$(name)(self, other):
        if isinstance(other, Coord):
            self.value $(symbol)= other.value
        elif isinstance(other, (int, float)):
            self.value $(symbol)= other
        else:
            return NotImplemented
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Coord):
            result = divmod(self.value, other.value)
        elif isinstance(other, (int, float)):
            result = divmod(self.value, other)
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval.prefix = self.prefix
        return new_coordval

    def __rdivmod__(self, other):
        if isinstance(other, (int, float)):
            result = divmod(other, self.value)
        else:
            return NotImplemented
        new_coordval = Coord(result)
        return new_coordval

    def __idivmod__(self, other):
        if isinstance(other, Coord):
            self.value = divmod(self.value, other.value)
        elif isinstance(other, (int, float)):
            self.value = divmod(self.value, other)
        else:
            return NotImplemented
        return self

$py(unary_ops = {"__neg__":"-", "__pos__":"+", "__invert__":"~"})
$for(name, symbol in unary_ops.items())
    def $(name)(self):
        new_coordval = Coord($(symbol)self.value)
        new_coordval.prefix = self.prefix
        return new_coordval
$endfor

    def __abs__(self):
        new_coordval = Coord(abs(self.value))
        new_coordval.prefix = self.prefix
        return new_coordval

$py(conversion_ops = {"__int__":"int(", "__float__":"float("})
$for(name, func in conversion_ops.items())
    def $(name)(self):
        return $(func)self.value)
$endfor

    def __round__(self, n=0):
        new_coordval = Coord(round(self.value, n))
        new_coordval.prefix = self.prefix
        return new_coordval