module TestRunner exposing (..)

import Adbs exposing (Miti, ad2bs, miti)
import Date
import Expect exposing (Expectation)
import Test exposing (..)


toBsFailingDateConversion message dateString =
    let
        convertedDate =
            Date.fromString dateString
                |> Result.toMaybe
                |> Maybe.andThen Adbs.ad2bs
    in
        test message <|
            \() ->
                Expect.equal convertedDate Nothing


toBsDateConversion dateString miti =
    let
        convertedDate =
            Date.fromString dateString
                |> Result.toMaybe
                |> Maybe.andThen Adbs.ad2bs
    in
        test dateString <|
            \() ->
                Expect.equal convertedDate (Just miti)


toAdFailingDateConversion message miti =
    let
        convertedDate =
            Adbs.bs2ad miti
    in
        test message <|
            \() ->
                Expect.equal convertedDate Nothing


toAdDateConversion miti dateString =
    let
        convertedDate =
            Adbs.bs2ad miti
    in
        test dateString <|
            \() ->
                Expect.equal convertedDate (Date.fromString dateString |> Result.toMaybe)


suite : Test
suite =
    describe "Adbs Tests"
        [ describe "Converting AD dates to BS tests"
            [ toBsFailingDateConversion "Date outside range" "1922/1/1"
            , toBsFailingDateConversion "Invalid Dates should fail" "2000/01/32"
            , toBsDateConversion "2000/02/02" (miti 2056 10 19)
            , toBsDateConversion "2017/06/17" (miti 2074 3 3)
            , toBsDateConversion "2014/01/01" (miti 2070 9 17)
            , toBsDateConversion "2015/07/19" (miti 2072 4 3)
            , toBsDateConversion "2015/07/17" (miti 2072 4 1)
            , toBsDateConversion "1994/10/23" (miti 2051 7 6)
            , toBsDateConversion "1990/6/24" (miti 2047 3 10)
            ]
        , describe "Converting BS dates to AD tests"
            [ toAdFailingDateConversion "Date outside range" (miti 1000 1 1)
            , toAdFailingDateConversion "Invalid Dates should fail" (miti 2046 13 14)
            , toAdDateConversion (miti 2056 10 19) "2000/02/02"
            , toAdDateConversion (miti 2074 3 3) "2017/06/17"
            , toAdDateConversion (miti 2070 9 17) "2014/01/01"
            , toAdDateConversion (miti 2072 4 3) "2015/07/19"
            , toAdDateConversion (miti 2072 4 1) "2015/07/17"
            , toAdDateConversion (miti 2051 7 6) "1994/10/23"
            , toAdDateConversion (miti 2047 3 10) "1990/6/24"
            ]
        ]
