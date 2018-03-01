-- lists are homoegenous data structures
-- i.e. [1, 'a', 2, 'b'] is NOT a valid list in Haskell

-- Note: We can use the let keyword to define a name in GHCI.
-- e.g. let a = 1, is the same as defining a = 1 in a script and running it

-- Strings are lists:
-- "hello" is the same as ['h', 'e', 'l', 'l', 'o']

-- concatenation (++):
concatEg1 = [1,2,3,4] ++ [9,10,11,12]
concatEg2 = "hello" ++ " " ++ "world"
concatEg3 = ['w', 'o'] ++ ['o', 't']
-- Note: Haskell must traverse the entire list on the LHS (efficiency)

-- cons (:)
consEg1 = 'A':" SMALL CAT"
consEg2 = 5:[1,2,3,4,5]
-- Note: Unlike ++, the cons operator is instantaneous!
-- Note: cons takes a single element and a list
--       ++ takes two lists
-- i.e. 5:[1,2,3,4,5] is equivalent to [5] ++ [1,2,3,4,5] (notice the brackets around 5)

-- Note: [1,2,3] is really 1:2:3:[]

-- Indexing (!!)
indexEg1 = "Steve Buscemi" !! 6
indexEg2 = [11,2,3,4,5,56] !! 3

-- Comparison (<, >, <=, >=, ==)
-- Lists are compared (if they can be) left to right, elementwise
comparisonEg1 = [3,2,1] > [1,2,3]

-- List Functions:
lf1 = head [5,4,3,2,1] -- 5
lf2 = tail [5,4,3,2,1] -- [4,3,2,1]
lf3 = last [5,4,3,2,1] -- 1
lf4 = init [5,4,3,2,1] -- [5,4,3,2]
-- Note: Be careful when using head, tail, last, init on empty lists (It will throw an exception!)
lf5 = length [5,4,3,2,1] -- 5
lf6 = null [5,4,3,2,1] -- False, null checks if a list is empty
lf7 = reverse [5,4,3,2,1] -- [1,2,3,4,5]
lf8 = take 3 [5,4,3,2,1] -- [5,4,3], take n lst extracts n elements from the beginning of lst
lf9 = drop 3 [5,4,3,2,1] -- [2,1], drop n lst drops n elements from the beginning of the list, and then returns the remaining elements
lf10 = maximum [5,4,3,2,1] -- 5
lf11 = minimum [5,4,3,2,1] -- 1
lf12 = sum [5,4,3,2,1] -- 15
lf13 = product [5,4,3,2,1] -- 120
lf14 = 4 `elem` [5,4,3,2,1] -- True, n `elem` lst tells us if n exists in lst. (can also be used as: elem n lst)

-- Texas ranges:
tr1 = [1..20] -- equivalent to [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
tr2 = ['a'..'z'] -- equivalent to "abcdefghijklmnopqrstuvwxyz"
tr3 = ['K'..'Z'] -- equivalent to "KLMNOPQRSTUVWXYZ"
tr4 = ['A'..'z'] -- equivalent to "ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz"

tr5 = [2,4..20] -- equivalent to [2,4,6,8, ... 20] (i.e. even numbers up to 20)
tr6 = [3,6..20] -- equivalent to [3,6,9, ... 18] (i.e multiples of 3 up to 20)
-- Warning: You can't make a list from 20 to 1 by going [20 .. 1]

tr7 = take 24 [13,26 ..] -- [13, 26 ..] is an infinite list! when we executed take 24 on it, Haskell will generate the list
                         -- up to the 24th element and give it back to us

-- Warning: floating point lists can get funky
tr8 = [0.1, 0.3 .. 1] -- gives [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]

tr9 = take 10 (cycle [1,2,3]) -- cycle lst will create an infinite list by cycling through the elements of lst
tr10 = take 10 (repeat 5) -- repeat n will create an infinite list of the element n
tr11 = replicate 3 10 -- replicate m n will create a list with m copies of n

-- List Comprehension:
lc1 = [x*2 | x <- [1..10]]  -- Equivalent to [1..20]
-- Read these like set comprehensions! This is the list of all values x * 2, where x is an element of [1..10]
lc2 = [x*2 | x <- [1..10], x*2 >= 12]  -- equivalent to [12,14,16,18,20], we can add more conditions by separating them with a comma

-- We can put these comprehensions in a function:
boomBangs xs = [ if x < 10 then "BOOM" else "BANG!" | x <- xs, odd x]

-- We could write our own length function:
length' xs = sum [ 1 | _ <- xs] -- _ is a placeholder for "anything"

-- Tuples:
-- Tuples don't have to be homoegenous. So we can write:
tp1 = (1, "hello")
-- However, each tuple will have their own type, so this won't work:
-- tp2 = [(1, "hello"), (1, 2)], since:
-- -- (1, "hello") has type (Integer, [Char]), but
-- -- (1, 2) has type (Integer, Integer)
-- Another example:
-- tp2 = [(1, "hello"), ("hello", 1)]
tp2 = fst (8, 11) -- 8, fst takes a pair (a tuple of 2 elements) and returns the first component
tp3 = snd (8, 11) -- 11, snd takes a pair and returns the 2nd component
tp4 = zip [1,2,3,4,5] [5,5,5,5,5]  -- [(1,5),(2,5),(3,5),(4,5),(5,5)]


-- Combining everything!
-- Objective: We want all right triangles that has integers for all sides, all sides are equal to or smaller than 10,
-- and has a perimeter of 24?

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
