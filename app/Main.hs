module Main where

import qualified Data.Aeson as Aeson
import AWSLambda

import Handlers

main = lambdaMain $ planHandler -- helloHandler

handler :: Aeson.Value -> IO [Int]
handler evt = do
  putStrLn "This should go to logs"
  print evt
  pure [1, 2, 3]