module CollectiveIntelligence.Euclidean (similarity) where

import CollectiveIntelligence.Types
import CollectiveIntelligence.Reviews
import qualified Data.Map as M

similarity :: Reviews -> Person -> Person -> Similarity
similarity rs person1 person2
  | sim == M.empty = 0.0
  | otherwise = 1 / (1 + sumOfsquares)
  where sim = M.intersectionWith (-) (rs M.! person1) (rs M.! person2)
        sumOfsquares = sum . M.elems $ M.map (flip (^^) 2) sim
