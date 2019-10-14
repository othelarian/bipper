import Browser
import Html exposing(Html, audio, button, div, source, text)
import Html.Attributes exposing(..)
import Html.Events exposing(..)

import Debug

-- TODO : managing state change
-- TODO : keeping track of time
-- TODO : make the bip (only do it)
-- TODO : make it bip with VMA thresholds

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
    | TestSound

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp -> (model, Cmd.none)
        TestSound ->
            --
            let
                --
                _ = Debug.log "test" "sound"
                --
            in
            --
            (model, Cmd.none)
            --

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
        , button [onClick TestSound] [text "Test Sound"]
        , div [] [text "bipper prototype"]
        , audio [] [source [src "../bip.wav", type_ "audio/wav"] []]
        ]
    }
