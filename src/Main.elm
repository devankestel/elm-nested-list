module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- import Time.DateTime as DateTime exposing (DateTime, dateTime)
-- MAIN


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }



-- MODEL


type alias Category =
    { name : String
    , pointValue : Int
    }


type alias Completion =
    { isCompleted : Bool
    , dateCompleted : Int
    }


type alias Task =
    { title : String
    , category : Category
    , completion : Completion
    }


type alias Model =
    { categories : List Category
    , tasks : List Task
    }


categories : List Category
categories =
    [ { name = "Dragon"
      , pointValue = 1
      }
    , { name = "Mermaid"
      , pointValue = 3
      }
    , { name = "Maze"
      , pointValue = 10
      }
    ]


tasks : List Task
tasks =
    [ { title = "This is the first task. Dragons."
      , category = { name = "Dragon", pointValue = 1 }
      , completion = { isCompleted = False, dateCompleted = 0 }
      }
    , { title = "This is the second task. Mermaids."
      , category = { name = "Mermaid", pointValue = 2 }
      , completion = { isCompleted = False, dateCompleted = 0 }
      }
    , { title = "This is the third task. Maze."
      , category = { name = "Maze", pointValue = 10 }
      , completion = { isCompleted = False, dateCompleted = 0 }
      }
    ]


initModel : Model
initModel =
    { categories = categories
    , tasks = tasks
    }



-- UPDATE


type Msg
    = Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        Clear ->
            initModel



-- VIEW


view : Model -> Html Msg
view model =
    let
        header =
            ("Tasks")
    in
        div
            [ style
                [ ( "font-family", "Helvetica" )
                , ( "font-size", "40px" )
                , ( "margin-left", "40px" )
                ]
            ]
            [ h1 [] [ text header ]
            ]
