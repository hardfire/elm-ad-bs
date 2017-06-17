module Adbs exposing (ad2bs, miti)

import Array
import Date
import Dict


type alias Miti =
    { year : Int
    , month : Int
    , day : Int
    }


miti year month day =
    { year = year
    , month = month
    , day = day
    }


bs_equiv =
    miti 2000 9 17


ad_equiv =
    miti 1944 1 1


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


{-| Coverts string in the AD calendar to BS calendar format
-}
ad2bs : String -> Maybe Miti
ad2bs ad =
    verifyDate ad
        |> Maybe.andThen (countAdDays ad_equiv)
        |> Maybe.andThen (addDaysToBS bs_equiv)


{-| Adds days to a BS Date
-}
addDaysToBS : Miti -> Int -> Maybe Miti
addDaysToBS miti days =
    let
        monthsInCurrentYear =
            Dict.get miti.year calendarData
                |> Maybe.withDefault (Array.fromList [])
    in
    if Array.length monthsInCurrentYear > 0 then
        addDaysToBSInternal miti days
            |> Just
    else
        Nothing


{-| Recursively adds days to a BS Date
first adds years,
then months,
finally the days
-}
addDaysToBSInternal : Miti -> Int -> Miti
addDaysToBSInternal miti days =
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
            addDaysToBSInternal
                { miti | month = miti.month + 1, day = 1 }
                (days - daysRemainingInMonth - 1)
        else
            addDaysToBSInternal
                { miti | year = miti.year + 1, month = 1, day = 1 }
                (days - daysRemainingInMonth - 1)
    else
        { miti | day = miti.day + days }



-- TODO magic


{-| Counts the number of days between two AD dates
Expects the date to be proper,
else returns a diff from the epoch
-}
countAdDays : Miti -> Miti -> Maybe Int
countAdDays startMiti endMiti =
    let
        startDate =
            Date.fromString (mitiToString startMiti)
                |> Result.withDefault (Date.fromTime 0)
                |> Date.toTime

        endDate =
            Date.fromString (mitiToString endMiti)
                |> Result.withDefault (Date.fromTime 0)
                |> Date.toTime
    in
    if (endDate == 0) || (startDate == 0) then
        Nothing
    else
        (endDate - startDate)
            / (1000 * 60 * 60 * 24)
            |> floor
            |> Just


{-| Verify if a date is for a year/month/day format
and fits in the required range of year, months and days.
This is just a semantic check. It doesn't check if the date
is a real date or not.
-}
verifyDate : String -> Maybe Miti
verifyDate date =
    case String.split "/" date of
        [ year, month, day ] ->
            verifyDateParams year month day

        _ ->
            Nothing


verifyDateParams : String -> String -> String -> Maybe Miti
verifyDateParams yearString monthString dayString =
    let
        year =
            Result.withDefault 0 (String.toInt yearString)

        month =
            Result.withDefault 0 (String.toInt monthString)

        day =
            Result.withDefault 0 (String.toInt dayString)
    in
    if year > 1943 && year < 2093 && month > 0 && month < 13 && day > 0 && day < 32 then
        Just (miti year month day)
    else
        Nothing


mitiToString : Miti -> String
mitiToString miti =
    toString miti.year ++ "/" ++ toString miti.month ++ "/" ++ toString miti.day
