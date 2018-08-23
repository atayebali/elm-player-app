module Update exposing (..)
import Msgs exposing (Msg)
import Models exposing (Model)

-- When update gets the OnFetchPlayers message it will grab the response from the Msg and set it on the model.

update : Msg  -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.OnFetchPlayers response ->
            ({ model | players = response}, Cmd.none)
