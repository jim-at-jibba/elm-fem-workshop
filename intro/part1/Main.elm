module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


banner =
    {- ð TODO: Add a logo and tagline to this banner, so its structure becomes:

          <div class="banner">
              <div class="container">

                  <h1 class="logo-font">conduit</h1>

                  <p>A place to share your knowledge.</p>

               </div>
          </div>

       ð¡ HINT 1: the <div class="container"> above is an element with 2 child nodes.

       ð¡ HINT 2: the <div class="feed-toggle"> below is an element with text.
    -}
    div [ class "banner" ]
        [ div [ class "container" ]
            [ h1 [ class "logo-font" ] [ text "conduit" ]
            , p [] [ text "A place to share knowledge." ]
            ]
        ]


feed =
    div [ class "feed-toggle" ] [ text "(In the future weâll display a feed of articles here!)" ]


main =
    div [ class "home-page" ]
        [ banner
        , div [ class "container page" ]
            [ div [ class "row" ]
                [ div [ class "col-md-9" ] [ feed ]
                , div [ class "col-md-3" ] []
                ]
            ]
        ]
