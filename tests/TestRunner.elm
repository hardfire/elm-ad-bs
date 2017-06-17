module TestRunner exposing (..)

import Adbs exposing (ad2bs, miti)
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "Adbs Tests"
        [ describe "Converting AD dates to BS tests"
            [ test "0BC should fail" <|
                \() ->
                    Expect.equal (ad2bs "0/0/0") Nothing
            , test "Invalid Dates should fail" <|
                \() ->
                    Expect.equal (ad2bs "2000/02/32") Nothing
            , test "2000/02/02 - 2056/10/19" <|
                \() ->
                    Expect.equal (ad2bs "2000/02/02") (Just (miti 2056 10 19))
            , test "2017/06/17 - 2074/03/03" <|
                \() ->
                    Expect.equal (ad2bs "2017/06/17") (Just (miti 2074 3 3))
            , test "2014/01/01 - 2070/9/17" <|
                \() ->
                    Expect.equal (ad2bs "2014/01/01") (Just (miti 2070 9 17))
            , test "2015/7/19 - 2072/4/3'" <|
                \() ->
                    Expect.equal (ad2bs "2015/07/19") (Just (miti 2072 4 3))
            , test "2015/7/17 - 2072/4/1" <|
                \() ->
                    Expect.equal (ad2bs "2015/07/17") (Just (miti 2072 4 1))
            ]
        ]
