module Main exposing (view)

import Element exposing (el, image, viewport)
import Element.Attributes exposing (center, verticalCenter)
import Html
import Html.Attributes
import Style exposing (StyleSheet, style, styleSheet)


type Styles
    = None


styling : StyleSheet Styles variation
styling =
    styleSheet
        [ style None []
        ]


view : Html.Html msg
view =
    Html.node "html"
        []
        [ head
        , content
        ]


content : Html.Html msg
content =
    viewport styling <|
        el None
            [ center, verticalCenter ]
        <|
            image None [] { src = "https://user-images.githubusercontent.com/9598261/34360795-142831b2-ea5c-11e7-9789-7ba811cbaac2.jpg", caption = "Studio Galera" }


head : Html.Html msg
head =
    Html.node "head"
        []
        [ Html.node "title" [] [ Html.text "West Cork BJJ" ]
        , Html.node "meta" [ Html.Attributes.charset "UTF-8" ] []
        , Html.node "meta"
            [ Html.Attributes.name "viewport"
            , Html.Attributes.content "width=device-width, initial-scale=1"
            ]
            []
        ]
