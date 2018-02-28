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
