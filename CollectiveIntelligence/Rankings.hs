module CollectiveIntelligence.Rankings (topMatches) where

import CollectiveIntelligence.Types
import CollectiveIntelligence.Reviews
import qualified Data.Map as M
import Data.List (sort)

topMatches :: Reviews -> Person -> Int -> SimFunction -> [(Similarity, Person)]
topMatches rs person n f = take n . reverse . sort $ sims
  where sims = [(sim, p) | p <- M.keys rs, p /= person, let sim = f rs person p]
