{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE StrictData  #-}
{-# LANGUAGE DeriveGeneric  #-}
{-# LANGUAGE RecordWildCards  #-}

module Handlers.PlanAHandler where

import Data.Text (Text)
import GHC.Generics
import Data.Aeson

import Handlers.Plan


planHandler :: RequestPlan -> IO ResponsePlan
planHandler req@(RequestPlan {plan = PlanA, ..}) = return $ ResponsePlanA req "見事な連携だ……。"
planHandler req@(RequestPlan {plan = PlanB, ..}) = return $ ResponsePlanB req "あ？ねぇよそんなもん"
