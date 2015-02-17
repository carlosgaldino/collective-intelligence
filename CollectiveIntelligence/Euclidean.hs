module CollectiveIntelligence.Euclidean (similarity) where

import CollectiveIntelligence.Critics
import qualified Data.Map as M

type Similarity = Double

similarity :: Critics -> Person -> Person -> Similarity
similarity cs person1 person2
  | sim == M.empty = 0.0
  | otherwise = 1 / (1 + sumOfsquares)
  where sim = M.intersectionWith (-) (cs M.! person1) (cs M.! person2)
        sumOfsquares = sum . M.elems $ M.map (flip (^^) 2) sim
