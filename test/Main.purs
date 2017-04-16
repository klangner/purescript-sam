module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Eff.Random (RANDOM)

import Test.Assert (ASSERT)

import Test.Sam.Parser (testParser)


main :: ∀ eff. Eff (console :: CONSOLE, random :: RANDOM, exception :: EXCEPTION, assert :: ASSERT | eff) Unit
main = do
  testParser
