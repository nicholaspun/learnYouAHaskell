doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleUsBetter x y = doubleMe x + doubleMe y
-- Note: Function applications have highest precendence!

-- Note: Functions don't have to be in any particular order

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2
-- The else clause is mandatory in Haskell!
-- "if" statements are expressions in Haskell (i.e. They always return something)

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
-- The ' character usually denotes:
-- -- A strict version of a function, or
-- -- A slightly modified version of a function or variable

-- Because ' is a valid character in functions:
conanO'Brien = "It's a-me, Conan O'Brien!"
-- This is a valid function! (Or rather, since it never changes value, we call
-- this a definition! -- We can use conanO'Brien or the string interchangeably)

-- Note: Functions CAN NOT begin with capital letters
