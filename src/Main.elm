import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp


main =
  StartApp.start { model = model, view = view, update = update }


model = 0


view address model =
  div []
    [ text "such wow"]


update action model =
  model
