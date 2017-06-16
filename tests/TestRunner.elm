module TestRunner exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import Adbs exposing (ad2bs, miti)


suite : Test
suite =
    describe "Sample Test Suite"
        [ describe "Unit test examples"
            [ test "Addition" <|
                \() ->
                    Expect.equal (3 + 7) 10
            ]
        , describe "Ad2BS examples"
            [ test "0BC should fail" <|
                \() ->
                    Expect.equal (ad2bs "0/0/0") Nothing
            , test "date should work" <|
                \() ->
                    Expect.equal (ad2bs "2016/10/11") (Just (miti 2016 10 11))
            ]
        ]
