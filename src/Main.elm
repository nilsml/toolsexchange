import Array
import Html exposing (..)
import Html.Shorthand exposing (..)
import Html.Attributes as A
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp


main =
  StartApp.start { model = model, view = view, update = update }


model = 0


view address model =
  div []
    [ stylesheet "../css/tuktuk.css"
    , stylesheet "../css/tuktuk.grid.css"
    , stylesheet "../css/tuktuk.icons.css"
    , stylesheet "../css/tuktuk.theme.default.css"
    , h1_ "such wow"
    ]


update action model =
  model



stylesheet : String -> Html
stylesheet href =
  node "link"
    [ A.rel "stylesheet"
    , A.href href
    ] []
