module Adbs exposing (Miti, ad2bs, bs2ad, miti)

{-| This library converts Date.Date type to Dates in the
Bikarm Sambat Calendar (B.S) using the Miti type


# Type

@docs Miti
@docs miti


# Converters

@docs ad2bs
@docs bs2ad

-}

import Array
import Date
import Dict


{-| Represent BS Date types in Miti format.
-}
type alias Miti =
    { year : Int
    , month : Int
    , day : Int
    }


{-| Constructor to create dates of the Miti type

    miti 2047 3 11 =
        { year = 2047, month = 3, day = 11 }

-}
miti : Int -> Int -> Int -> Miti
miti year month day =
    { year = year
    , month = month
    , day = day
    }


( bs_equiv, ad_equiv ) =
    ( miti 2000 9 17
    , Date.fromString "1944/1/1" |> Result.withDefault (Date.fromTime 0)
    )


calendarData =
    Dict.fromList
        [ ( 1978, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1979, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1980, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 1981, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 1982, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1983, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1984, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 1985, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 1986, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1987, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1988, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 1989, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1990, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1991, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1992, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 1993, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1994, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1995, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 1996, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 1997, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1998, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 1999, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2000, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 365 ] )
        , ( 2001, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2002, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2003, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2004, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 365 ] )
        , ( 2005, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2006, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2007, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2008, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 365 ] )
        , ( 2009, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2010, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2011, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2012, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 2013, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2014, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2015, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2016, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 2017, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2018, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2019, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 2020, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2021, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2022, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 2023, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 2024, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2025, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2026, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2027, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 365 ] )
        , ( 2028, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2029, Array.fromList [ 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2030, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2031, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 365 ] )
        , ( 2032, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2033, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2034, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2035, Array.fromList [ 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 365 ] )
        , ( 2036, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2037, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2038, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2039, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 2040, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2041, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2042, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2043, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 2044, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2045, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2046, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2047, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2048, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2049, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 2050, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 2051, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2052, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2053, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 2054, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 2055, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2056, Array.fromList [ 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2057, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2058, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 365 ] )
        , ( 2059, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2060, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2061, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2062, Array.fromList [ 30, 32, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31, 365 ] )
        , ( 2063, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2064, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2065, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2066, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 365 ] )
        , ( 2067, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2068, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2069, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2070, Array.fromList [ 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 365 ] )
        , ( 2071, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2072, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2073, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 366 ] )
        , ( 2074, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2075, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2076, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 2077, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 366 ] )
        , ( 2078, Array.fromList [ 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2079, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 365 ] )
        , ( 2080, Array.fromList [ 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 365 ] )
        , ( 2081, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30, 366 ] )
        , ( 2082, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2083, Array.fromList [ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2084, Array.fromList [ 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2085, Array.fromList [ 31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30, 366 ] )
        , ( 2086, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2087, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30, 366 ] )
        , ( 2088, Array.fromList [ 30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2089, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2090, Array.fromList [ 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30, 365 ] )
        , ( 2091, Array.fromList [ 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30, 366 ] )
        , ( 2092, Array.fromList [ 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30, 366 ] )
        ]


{-| Coverts Date type to a date string in BS calendar format

    ad2bs (<Sat Jan 09 1955 00:00:00 GMT +0545 (NPT)> : Date.Date)
    -- Just { year = 2000, month = 9, day = 17 } : Maybe.Maybe Miti

-}
ad2bs : Date.Date -> Maybe Miti
ad2bs ad =
    verifyAdDate ad
        |> Maybe.map (countAdDays ad_equiv)
        |> Maybe.andThen (addDaysToBs bs_equiv)


{-| Coverts date string in the BS calendar format to Date type

    bs2ad ({ year = 2000, month = 9, day = 17 } : Miti)
    -- Just <Sat Jan 09 1955 00:00:00 GMT +0545 (NPT)> : Date.Date)

-}
bs2ad : Miti -> Maybe Date.Date
bs2ad bs =
    verifyBsDate bs
        |> Maybe.map (countBsDays 0 bs_equiv)
        |> Maybe.map (addDaysToAd ad_equiv)


{-| adds days to Date.Date
-}
addDaysToAd : Date.Date -> Int -> Date.Date
addDaysToAd date days =
    let
        timestamp =
            Date.toTime date

        daysToAdd =
            toFloat (days * (1000 * 60 * 60 * 24))
    in
        Date.fromTime (timestamp + daysToAdd)


{-| Counts days between two BS dates

  - count till then end of the year
  - count years until the year before
  - count months till the month and year matches
  - count days till date matches
  - return sum when everything matches

-}
countBsDays : Int -> Miti -> Miti -> Int
countBsDays sum start end =
    let
        monthsInCurrentYear =
            Dict.get start.year calendarData
                |> Maybe.withDefault (Array.fromList [])

        daysInYear =
            Array.get 12 monthsInCurrentYear
                |> Maybe.withDefault 365

        daysInMonth =
            Array.get (start.month - 1) monthsInCurrentYear
                |> Maybe.withDefault 30

        daysRemainingInMonth =
            daysInMonth - start.day
    in
        if start.year == end.year && start.month == end.month && start.day <= end.day then
            sum + end.day - start.day
        else if (start.year + 1) < end.year && start.month == 1 && start.day == 1 then
            countBsDays
                (sum + daysInYear)
                { start | year = start.year + 1 }
                end
        else if start.month == 12 then
            countBsDays
                (sum + daysRemainingInMonth + 1)
                { start | month = 1, day = 1, year = start.year + 1 }
                end
        else if start.month < 12 then
            countBsDays
                (sum + daysRemainingInMonth + 1)
                { start | month = start.month + 1, day = 1 }
                end
        else
            sum


{-| Adds days to a BS Date
-}
addDaysToBs : Miti -> Int -> Maybe Miti
addDaysToBs miti days =
    let
        monthsInCurrentYear =
            Dict.get miti.year calendarData
                |> Maybe.withDefault (Array.fromList [])
    in
        if Array.length monthsInCurrentYear > 0 then
            addDaysToBsInternal miti days
                |> Just
        else
            Nothing


{-| Recursively adds days to a BS Date
first adds years,
then months,
finally the days
-}
addDaysToBsInternal : Miti -> Int -> Miti
addDaysToBsInternal miti days =
    let
        monthsInCurrentYear =
            Dict.get miti.year calendarData
                |> Maybe.withDefault (Array.fromList [])

        daysRemainingInMonth =
            (Array.get (miti.month - 1) monthsInCurrentYear
                |> Maybe.withDefault 30
            )
                - miti.day
    in
        if days > daysRemainingInMonth then
            if miti.month < 12 then
                addDaysToBsInternal
                    { miti | month = miti.month + 1, day = 1 }
                    (days - daysRemainingInMonth - 1)
            else
                addDaysToBsInternal
                    { miti | year = miti.year + 1, month = 1, day = 1 }
                    (days - daysRemainingInMonth - 1)
        else
            { miti | day = miti.day + days }


{-| Counts the number of days between two AD dates
-}
countAdDays : Date.Date -> Date.Date -> Int
countAdDays start end =
    let
        startDate =
            Date.toTime start

        endDate =
            Date.toTime end
    in
        (endDate - startDate)
            / (1000 * 60 * 60 * 24)
            |> floor


{-| Verify if a date fits in the required range of year.
One that we can convert to BS for
-}
verifyAdDate : Date.Date -> Maybe Date.Date
verifyAdDate date =
    let
        year =
            Date.year date
    in
        if year < 1944 || year > 2035 then
            Nothing
        else
            Just date


{-| Verify if a date fits in the required range of year.
One that we can convert to AD
-}
verifyBsDate : Miti -> Maybe Miti
verifyBsDate miti =
    let
        year =
            miti.year

        month =
            miti.month

        day =
            miti.day
    in
        if year < 2000 || year > 2092 || month < 1 || month > 12 || day < 1 || day > 32 then
            Nothing
        else
            Just miti
