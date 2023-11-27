import Data.Char (toLower)
import Data.Char (toUpper)


song n = if n == 0 then ""
    else song (n-1) ++ "\n" ++ verse n

verse n = line1 n ++ line2 n ++ line3 n ++ line4 n

line1 n = if n == 1 then
    "One man went to mow\n"
    else 
    numbers!!(n-2) ++ " men went to mow\n"

line2 n = "Went to mow a meadow\n"

line3 n = if n==1 then
    "One man and his dog\n"
    else
    numbers!!(n-2) ++ " men went to mow\n"

line4 n = "Went to mow a meadow\n\n"

count n = if n==0 then ""
              else
              numbs!!(n-1) ++ " men, " ++ count (n-1)


numbers = ["Two", "Three", "Four", "Five", "Six",
            "Seven", "Eight", "Nine"]

numbs   = ["two", "three", "four", "five", "six",
               "seven", "eight"]


modernise :: String -> String
modernise = unwords . map capitalise . words

capitalise :: Word -> Word
capitalise xs = [toUpper (head xs)]++ tail xs