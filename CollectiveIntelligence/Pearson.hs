module CollectiveIntelligence.Pearson (similarity) where

import CollectiveIntelligence.Types
import CollectiveIntelligence.Critics
import qualified Data.Map as M

similarity :: Critics -> Person -> Person -> Similarity
similarity cs person1 person2
  | sim1 == M.empty = 0.0
  | den == 0.0 = 0.0
  | otherwise = num / den
  where num = pSum - (sum1 * sum2 / n)
        den = sqrt ((sum1Sq - (sum1 ^^ 2) / n) * (sum2Sq - (sum2 ^^ 2) / n))
        sim1 = M.intersection (cs M.! person1) (cs M.! person2)
        sim2 = M.intersection (cs M.! person2) sim1
        pSum = sum . M.elems $ M.unionWith (*) sim1 sim2
        sum1 = M.foldl (+) 0 sim1
        sum2 = sum $ M.elems sim2
        sum1Sq = M.foldl (\x y -> x + (y ^^ 2)) 0 sim1
        sum2Sq = sum . M.elems $ M.map (flip (^^) 2) sim2
        n = fromIntegral $ M.size sim1
