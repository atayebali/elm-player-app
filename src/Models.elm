module Models exposing (..)
import RemoteData exposing (WebData)

type alias Model =
    { players: WebData (List Player) } -- Array of players from the web


initialModel: Model
initialModel =
    { players = RemoteData.Loading  -- While fetch is happening.

    }

type alias PlayerId =
    String


type alias Player =
    { id: PlayerId
    , name: String
    , level: Int
    }
