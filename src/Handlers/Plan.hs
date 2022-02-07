{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE StrictData  #-}
{-# LANGUAGE DeriveGeneric  #-}
{-# LANGUAGE RecordWildCards  #-}
{-# LANGUAGE GADTs  #-}

module Handlers.Plan where

import Data.Text (Text)
import GHC.Generics
import Data.Aeson
import Data.Aeson.Types
data Plan = PlanA | PlanB
    deriving (Show, Generic)

instance FromJSON Plan where
    parseJSON (String "PlanA") = return PlanA
    parseJSON (String "PlanB") = return PlanB
    parseJSON invalid          = prependFailure "parsing Plan failed, " (typeMismatch "String" invalid)

instance ToJSON   Plan where
    toJSON PlanA = "PlanA"
    toJSON PlanB = "PlanB"

data RequestPlan = RequestPlan
    { plan :: Plan
    , message :: Text
    } deriving (Show, Generic)

data ResponsePlan
    = ResponsePlanA
    { request :: RequestPlan
    , response :: Text
    } 
    | ResponsePlanB
    { request :: RequestPlan
    , response :: Text
    } deriving (Show, Generic)
    


instance FromJSON RequestPlan
instance ToJSON RequestPlan
instance ToJSON ResponsePlan
