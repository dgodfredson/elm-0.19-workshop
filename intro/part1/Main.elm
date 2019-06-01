module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


banner =
    div [ class "banner" ]
        [ div [ class "container" ]
            [ h1 [ class "logo-font" ] [ text "conduit" ]
            , p [] [ text "A place to share your knowledge" ]
            ]
        ]


test =
    {- 👉 TODO: Add a logo and tagline to this banner, so its structure becomes:




       💡 HINT 1: the <div class="container"> above is an element with 2 child nodes.

       💡 HINT 2: the <div class="feed-toggle"> below is an element with text.
    -}
    div [ class "banner" ]
        [ div [ class "container" ]
            [ text "👉 TODO: Put the <h1> here instead of this text, then add the <p> right after the <h1>" ]
        ]


pluralize singular plural len =
    if len == 1 then
        singular

    else
        plural


testString =
    "(In the future we’ll display a feed of articles here!) "



--++ toString List.map (pluralize "leaf" "leaves") [ 0, 5 ]


feed =
    div [ class "feed-toggle" ]
        [ text testString ]


main =
    div [ class "home-page" ]
        [ banner
        , div
            [ class "container page" ]
            [ div [ class "row" ]
                [ div [ class "col-md-9" ] [ feed ]
                , div [ class "col-md-3" ] []
                ]
            ]
        ]
