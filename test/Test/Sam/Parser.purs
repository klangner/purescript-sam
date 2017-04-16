module Test.Sam.Parser (testParser) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log, CONSOLE)
import Test.Assert (assert, ASSERT)


testParser :: forall eff. Eff (console :: CONSOLE, assert :: ASSERT | eff) Unit
testParser = do

    log "\n# Always true"
    assert $ true
