module CollectiveIntelligence.Types where

import qualified Data.Map as M

type Person      = String
type Movie       = String
type Rating      = Double
type Preferences = M.Map Movie Rating
type Critics     = M.Map Person Preferences
type Similarity  = Double
type SimFunction = Critics -> Person -> Person -> Similarity
