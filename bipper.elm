import Browser
import Html exposing(Html, div, text)
import Html.Attributes exposing(..)
import Html.Events exposing(..)

main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subs
        }

type alias Model =
    { running : Bool
    , etime : Int
    }

init : () -> (Model, Cmd Msg)
init _ = (Model False 0, Cmd.none)

type Msg
    = NoOp

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp -> (model, Cmd.none)

subs : Model -> Sub Msg
subs model =
    --
    -- TODO : manage time
    --
    Sub.none

view : Model -> Browser.Document Msg
view model =
    { title = "Bipper"
    , body =
        [ div [] []
        --
        -- TODO : adding switch for state
        --
        , div [] []
        , div [] [text "bipper prototype"]
        ]
    }
