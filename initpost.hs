module InitPost where

import System.Environment
import Data.Time.Clock
import Data.Time.Calendar

main :: IO ()
main = do
  args <- getArgs
  day <- utctDay <$> getCurrentTime
  writeFile (concat [show day, "-", "busconf.md"]) $ unlines [
    "---",
    "layout: post",
    "title: \"" ++ head args ++ "\"",
    "date: " ++ show day,
    "description: \"\"",
    "category:",
    "tags: []",
    "---",
    "",
    "Content goes here"]

---
--layout: post
--title: "Graceful Exceptions"
--date:   2018-07-27 13:32:17
--description: ""
--category:
--tags: []
-----
