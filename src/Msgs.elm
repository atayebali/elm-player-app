module Msgs exposing (..)

import Models exposing (Player)
import RemoteData exposing (WebData)

type Msg = OnFetchPlayers (WebData(List Player))  -- Here is where the Msg OnFetchPlayers is passed the players
