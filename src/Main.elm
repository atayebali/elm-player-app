module Main exposing (..)

import Commands exposing (fetchPlayers) -- Here in order to grab the players
import Html exposing (program)
import Msgs exposing (Msg)
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)

init : ( Model, Cmd Msg )

--
--  When the app inits it will call fetchPlayers in the command module
--  this will fire fetchPlayers which will fire the Msg OnfetchPlayer command
--  Update will receive the command OnFetch Players pull the web response off it and set the model
--

init =
    ( initialModel, fetchPlayers)


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


main : Program Never Model Msg
main =
  program
    {
     init = init
     , view = view
     , update = update
     , subscriptions = subscriptions
    }