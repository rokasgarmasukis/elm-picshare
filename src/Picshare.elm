module Picshare exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)


main : Html msg
main =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ] ]
        , div [ class "content-flow" ]
            [ viewDeailtedPhoto (baseUrl ++ "1.jpg") "Surfing"
            , viewDeailtedPhoto (baseUrl ++ "2.jpg") "The Fox"
            , viewDeailtedPhoto (baseUrl ++ "3.jpg") "Evening"
            ]
        ]


baseUrl : String
baseUrl =
    "https://programming-elm.com/"


viewDeailtedPhoto : String -> String -> Html msg
viewDeailtedPhoto url caption =
    div [ class "detailed-photo" ]
        [ img [ src url ] []
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text caption ] ]
        ]
