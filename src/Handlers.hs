{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE StrictData  #-}
{-# LANGUAGE DeriveGeneric  #-}

module Handlers where

import Data.Text (Text)
import GHC.Generics
import Data.Aeson
data RequestHello = RequestHello
    { message :: Text

    } deriving (Show, Generic)

data ResponseHello = ResponseHello
    { request :: RequestHello 
    , response :: Text
    } deriving (Show, Generic)

instance FromJSON RequestHello
instance ToJSON RequestHello
instance ToJSON ResponseHello

helloHandler :: RequestHello -> IO ResponseHello
helloHandler req = return $ ResponseHello req "hello"