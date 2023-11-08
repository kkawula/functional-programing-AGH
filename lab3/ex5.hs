import Data.List (sort)

sortDesc :: Ord a => [a] -> [a]
sortDesc = sort . reverse
