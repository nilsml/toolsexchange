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
    , header [ A.class "bck margin-top margin-bottom" ]
      [ div [ A.class "column_6" ]
        [ h2 [ A.class "text italic thin" ] [ text "Much amaze!" ]
        ]
      , nav [ A.class "column_6 text right" ]
        [ a [ A.href "#"
            , A.class "button"
            ]
              [ span [ A.class "icon user" ] []
              , text "Login"
              ]
        ]
      ]
    ]


update action model =
  model



stylesheet : String -> Html
stylesheet href =
  node "link"
    [ A.rel "stylesheet"
    , A.href href
    ] []


{-|
<section class="bck theme landing text center">
        <div class="row">
            <div class="column_10 offset_1">
                <h1><strong>tuk</strong>tuk</h1>
                <h2 class="margin-bottom">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h2>
            </div>
        </div>
        <div class="row">
            <div class="column_6 offset_3 form subscribe">
                <input type="email" id="mail" class="large" placeholder="Your email address">
                <button class="button large icon envelope"></button>
            </div>
        </div>
        <h5 class="text book">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h5>
    </section>
|-}
