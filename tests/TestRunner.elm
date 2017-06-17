module TestRunner exposing (..)

import Adbs exposing (Miti, ad2bs, miti)
import Date
import Expect exposing (Expectation)
import Test exposing (..)


failingDateConversion message dateString =
    let
        convertedDate =
            Date.fromString dateString
                |> Result.toMaybe
                |> Maybe.andThen Adbs.ad2bs
    in
    test message <|
        \() ->
            Expect.equal convertedDate Nothing


dateConversion dateString miti =
    let
        convertedDate =
            Date.fromString dateString
                |> Result.toMaybe
                |> Maybe.andThen Adbs.ad2bs
    in
    test dateString <|
        \() ->
            Expect.equal convertedDate (Just miti)


suite : Test
suite =
    describe "Adbs Tests"
        [ describe "Converting AD dates to BS tests"
            [ failingDateConversion "Date outside range" "1922/1/1"
            , failingDateConversion "Invalid Dates should fail" "2000/01/32"
            , dateConversion "2000/02/02" (miti 2056 10 19)
            , dateConversion "2017/06/17" (miti 2074 3 3)
            , dateConversion "2014/01/01" (miti 2070 9 17)
            , dateConversion "2015/07/19" (miti 2072 4 3)
            , dateConversion "2015/07/17" (miti 2072 4 1)
            , dateConversion "1994/10/23" (miti 2051 7 6)
            , dateConversion "1990/6/24" (miti 2047 3 10)
            ]
        ]
