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


update action model =
  model



stylesheet : String -> Html
stylesheet href =
  node "link"
    [ A.rel "stylesheet"
    , A.href href
    ] []


{-|

 <header class="bck margin-top margin-bottom">
        <div class="row">
            <div class="column_6">
                <img src="/img/product/tuktuk.png" class="logo on-left"/>
                <h2 class="text italic thin">Landing Template</h2>
            </div>
            <nav class="column_6 text right">
                <a href="#" class="button"><span class="icon user"></span>Login</a>
                <a href="#" class="button bck theme"><span class="icon pencil"></span>Signup</a>
            </nav>
        </div>
    </header>
|-}
