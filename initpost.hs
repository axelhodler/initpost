module InitPost where

import System.Environment
import Data.Time.Clock
import Data.Time.Calendar

main :: IO ()
main = do
  args <- getArgs
  day <- currentDay
  writeFile (concat [show day, "-", extractTitle args, ".md"]) $ unlines [
    "---",
    "layout: post",
    "title: \"" ++ extractTitle args ++ "\"",
    "date: " ++ show day,
    "description: \"\"",
    "category:",
    "tags: []",
    "---",
    "",
    "Content goes here"]

extractTitle :: [String] -> String
extractTitle = head

currentDay :: IO Day
currentDay = utctDay <$> getCurrentTime

---
--layout: post
--title: "Graceful Exceptions"
--date:   2018-07-27 13:32:17
--description: ""
--category:
--tags: []
-----
