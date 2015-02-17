module CollectiveIntelligence.Rankings (topMatches) where

import CollectiveIntelligence.Types
import CollectiveIntelligence.Critics
import qualified Data.Map as M
import Data.List (sort)

topMatches :: Critics -> Person -> Int -> SimFunction -> [(Similarity, Person)]
topMatches cs person n f = take n . reverse . sort $ sims
  where sims = [(sim, p) | p <- M.keys cs, p /= person, let sim = f cs person p]
