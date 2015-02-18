module CollectiveIntelligence.Types where

import qualified Data.Map as M

type Person      = String
type Movie       = String
type Ratings     = M.Map Movie Double
type Reviews     = M.Map Person Ratings
type Similarity  = Double
type SimFunction = Reviews -> Person -> Person -> Similarity
