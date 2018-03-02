-- Types:
-- We can access the type of something by using the :t command

-- Bool - True, False
-- Char - 'a', 'b', etc
-- [Char] - Strings!
-- Int - Integer (whole numbers), bounded
-- Integer - unbounded Integer
-- Float - Floating point with single precision
-- Double - Floating point with double the precision
-- () - The empty tuple type (can only have one value: ())

-- Function types:
-- E.g. [Char] -> [Char] - takes a string as input and produces a string
--      Int -> Int -> Int - takes 2 ints as input and produces an int

-- Type variables :
-- E.g. What is the type of head?
--      head :: [a] -> a
-- where a is any type

-- TypeClasses 101:
-- Typeclasses are a sort of interface that defines some sort of behavior
-- i.e. If a type is a part of a specific typeclass, then it supports and implements
-- a certain sort of behaviour

-- E.g. :t (==) gives (Eq a) => a -> a -> Bool
--   Note: ==, +, -, *, /, etc. are all functions
-- => is called a "class constraint", in this case, a must be in the Eq class

-- Eq class (Equality):
-- Supports equality testing
-- Implements: ==, /=

-- Ord Class (Order):
-- Types that have an ordering
-- Implements: >, <, >=, <=
-- Note: The `compare` function returns an Ordering (an Ordering is a type that is one of GT, LT, EQ)
-- Note: To be part of the Ord class, a type must first be part of the Eq class

-- Show class
-- Can be presented as strings
-- Most used function is "show"
-- E.g. show 3 returns "3"

-- Read class
-- Provides operations for parsing character strings to obtain values they may represent
-- E.g. read "True" || False returns True
-- E.g. read "8.2" + 3.8 returns 12.0
-- Caution: read "4" will throw an error, since this is an ambiguous type!
-- -- We can fix this by doing: read "4" :: Int (where :: is syntax for us to specfiy the type)

-- Enum Class
-- Can be enumerated
-- Can use types in this class in list ranges
-- Types in this class have defined successors (succ) and predecessors (pred)
-- Example Types: (), Bool, Char, Ordering, Int, Integer, Float, Double

-- Bounded Class
-- Have an upper and lower bound
-- Implements: maxBound, minBound

-- Num Class (Numeric)
-- Types that can act like numbers
-- Example Types: Int, Integer, Float, Double
-- Note  TO be part of the Num class, a type must be part of the Show class and Eq class

-- Integral class (Whole Numbers) (Num is a superset of Integral)
-- Contains: Int and Integer

-- Floating class
-- Contains: Float and Double

-- A useful function is fromIntegral :: (Num b, Integral a) => a -> b
-- Takes an Integral type and makes it a Num type
