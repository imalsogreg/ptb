-- Need texlive-latexextra

module Main where

import Control.Monad
import System.Environment
import System.Process

data Fmt = HTML | WordDoc | PDF
         deriving (Read)

extension HTML    = ".html"
extension WordDoc = ".doc"
extension PDF     = ".pdf"

rawFiles = ["minutes.md","hardwareRec.md"]

cmd f fmt = "pandoc " ++ f ++ " --css=style.css -V mainfont='Dosis ExtraLight' -V monofont='Dosis ExtraLight' -V sansfont='Dosis ExtraLight' -V geometry:margin=1in --latex-engine=xelatex -H preamble.txt -o "
            ++ stripExt f ++ extension fmt

main = do
  args <- getArgs
  let fmt = case args of
        []  -> PDF
        [f] -> read f
        _   -> error usage          
  forM_ rawFiles (runCommand . flip cmd fmt)

usage = "./runghc render.hs [HTML|WordDoc|PDF]"

stripExt :: FilePath -> FilePath
stripExt = reverse . drop 1 . dropWhile (/= '.') . reverse
