module CollectiveIntelligence.Reviews (reviews) where

import CollectiveIntelligence.Types
import qualified Data.Map as M

lisa = M.fromList [("Lady in the Water", 2.5), ("Snakes on a Plane", 3.5),
                  ("Just My Luck", 3.0), ("Superman Returns", 3.5), ("You, Me and Dupree", 2.5),
                  ("The Night Listener", 3.0)] :: Ratings

gene = M.fromList [("Lady in the Water", 3.0), ("Snakes on a Plane", 3.5),
                  ("Just My Luck", 1.5), ("Superman Returns", 5.0), ("The Night Listener", 3.0),
                  ("You, Me and Dupree", 3.5)] :: Ratings

michael = M.fromList [("Lady in the Water", 2.5), ("Snakes on a Plane", 3.0),
                     ("Superman Returns", 3.5), ("The Night Listener", 4.0)] :: Ratings

claudia = M.fromList [("Snakes on a Plane", 3.5), ("Just My Luck", 3.0),
                     ("The Night Listener", 4.5), ("Superman Returns", 4.0), ("You, Me and Dupree", 2.5)] :: Ratings

mick = M.fromList [("Lady in the Water", 3.0), ("Snakes on a Plane", 4.0),
                  ("Just My Luck", 2.0), ("Superman Returns", 3.0), ("The Night Listener", 3.0),
                  ("You, Me and Dupree", 2.0)] :: Ratings

jack = M.fromList [("Lady in the Water", 3.0), ("Snakes on a Plane", 4.0),
                  ("The Night Listener", 3.0), ("Superman Returns", 5.0), ("You, Me and Dupree", 3.5)] :: Ratings

toby = M.fromList [("Snakes on a Plane", 4.5), ("You, Me and Dupree", 1.0), ("Superman Returns", 4.0)] :: Ratings

reviews = M.fromList [("Lisa Rose", lisa), ("Gene Seymour", gene), ("Michael Phillips", michael),
                      ("Claudia Puig", claudia), ("Mick LaSalle", mick), ("Jack Matthews", jack), ("Toby", toby)] :: Reviews
