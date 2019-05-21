module Example exposing (suite)

import Expect exposing (Expectation, equal)
import Fuzz exposing (Fuzzer, int, list, string)
import Roman exposing (convert)
import Test exposing (..)


suite : Test
suite =
    describe "Roman Test suite"
        [ describe "1-10"
            [ test "I" <| \_ -> convert "I" |> equal (Ok 1)
            , test "II" <| \_ -> convert "II" |> equal (Ok 2)
            , test "III" <| \_ -> convert "III" |> equal (Ok 3)
            , test "IV" <| \_ -> convert "IV" |> equal (Ok 4)
            , test "V" <| \_ -> convert "V" |> equal (Ok 5)
            , test "VI" <| \_ -> convert "VI" |> equal (Ok 6)
            , test "VII" <| \_ -> convert "VII" |> equal (Ok 7)
            , test "VIII" <| \_ -> convert "VIII" |> equal (Ok 8)
            , test "IX" <| \_ -> convert "IX" |> equal (Ok 9)
            , test "X" <| \_ -> convert "X" |> equal (Ok 10)
            ]
        , describe "11-20"
            [ test "XI" <| \_ -> convert "XI" |> equal (Ok 11)
            , test "XII" <| \_ -> convert "XII" |> equal (Ok 12)
            , test "XIII" <| \_ -> convert "XIII" |> equal (Ok 13)
            , test "XIV" <| \_ -> convert "XIV" |> equal (Ok 14)
            , test "XV" <| \_ -> convert "XV" |> equal (Ok 15)
            , test "XVI" <| \_ -> convert "XVI" |> equal (Ok 16)
            , test "XVII" <| \_ -> convert "XVII" |> equal (Ok 17)
            , test "XVIII" <| \_ -> convert "XVIII" |> equal (Ok 18)
            , test "XIX" <| \_ -> convert "XIX" |> equal (Ok 19)
            , test "XX" <| \_ -> convert "XX" |> equal (Ok 20)
            ]
        , describe "21-30"
            [ test "XXI" <| \_ -> convert "XXI" |> equal (Ok 21)
            , test "XXII" <| \_ -> convert "XXII" |> equal (Ok 22)
            , test "XXIII" <| \_ -> convert "XXIII" |> equal (Ok 23)
            , test "XXIV" <| \_ -> convert "XXIV" |> equal (Ok 24)
            , test "XXV" <| \_ -> convert "XXV" |> equal (Ok 25)
            , test "XXVI" <| \_ -> convert "XXVI" |> equal (Ok 26)
            , test "XXVII" <| \_ -> convert "XXVII" |> equal (Ok 27)
            , test "XXVIII" <| \_ -> convert "XXVIII" |> equal (Ok 28)
            , test "XXIX" <| \_ -> convert "XXIX" |> equal (Ok 29)
            , test "XXX" <| \_ -> convert "XXX" |> equal (Ok 30)
            ]
        , describe "31-40"
            [ test "XXXI" <| \_ -> convert "XXXI" |> equal (Ok 31)
            , test "XXXII" <| \_ -> convert "XXXII" |> equal (Ok 32)
            , test "XXXIII" <| \_ -> convert "XXXIII" |> equal (Ok 33)
            , test "XXXIV" <| \_ -> convert "XXXIV" |> equal (Ok 34)
            , test "XXXV" <| \_ -> convert "XXXV" |> equal (Ok 35)
            , test "XXXVI" <| \_ -> convert "XXXVI" |> equal (Ok 36)
            , test "XXXVII" <| \_ -> convert "XXXVII" |> equal (Ok 37)
            , test "XXXVIII" <| \_ -> convert "XXXVIII" |> equal (Ok 38)
            , test "XXXIX" <| \_ -> convert "XXXIX" |> equal (Ok 39)
            , test "XL" <| \_ -> convert "XL" |> equal (Ok 40)
            ]
        , describe "41-50"
            [ test "XLI" <| \_ -> convert "XLI" |> equal (Ok 41)
            , test "XLII" <| \_ -> convert "XLII" |> equal (Ok 42)
            , test "XLIII" <| \_ -> convert "XLIII" |> equal (Ok 43)
            , test "XLIV" <| \_ -> convert "XLIV" |> equal (Ok 44)
            , test "XLV" <| \_ -> convert "XLV" |> equal (Ok 45)
            , test "XLVI" <| \_ -> convert "XLVI" |> equal (Ok 46)
            , test "XLVII" <| \_ -> convert "XLVII" |> equal (Ok 47)
            , test "XLVIII" <| \_ -> convert "XLVIII" |> equal (Ok 48)
            , test "XLIX" <| \_ -> convert "XLIX" |> equal (Ok 49)
            , test "L" <| \_ -> convert "L" |> equal (Ok 50)
            ]
        , describe "51-60"
            [ test "LI" <| \_ -> convert "LI" |> equal (Ok 51)
            , test "LII" <| \_ -> convert "LII" |> equal (Ok 52)
            , test "LIII" <| \_ -> convert "LIII" |> equal (Ok 53)
            , test "LIV" <| \_ -> convert "LIV" |> equal (Ok 54)
            , test "LV" <| \_ -> convert "LV" |> equal (Ok 55)
            , test "LVI" <| \_ -> convert "LVI" |> equal (Ok 56)
            , test "LVII" <| \_ -> convert "LVII" |> equal (Ok 57)
            , test "LVIII" <| \_ -> convert "LVIII" |> equal (Ok 58)
            , test "LIX" <| \_ -> convert "LIX" |> equal (Ok 59)
            , test "LX" <| \_ -> convert "LX" |> equal (Ok 60)
            ]
        , describe "61-70"
            [ test "LXI" <| \_ -> convert "LXI" |> equal (Ok 61)
            , test "LXII" <| \_ -> convert "LXII" |> equal (Ok 62)
            , test "LXIII" <| \_ -> convert "LXIII" |> equal (Ok 63)
            , test "LXIV" <| \_ -> convert "LXIV" |> equal (Ok 64)
            , test "LXV" <| \_ -> convert "LXV" |> equal (Ok 65)
            , test "LXVI" <| \_ -> convert "LXVI" |> equal (Ok 66)
            , test "LXVII" <| \_ -> convert "LXVII" |> equal (Ok 67)
            , test "LXVIII" <| \_ -> convert "LXVIII" |> equal (Ok 68)
            , test "LXIX" <| \_ -> convert "LXIX" |> equal (Ok 69)
            , test "LXX" <| \_ -> convert "LXX" |> equal (Ok 70)
            ]
        , describe "71-80"
            [ test "LXXI" <| \_ -> convert "LXXI" |> equal (Ok 71)
            , test "LXXII" <| \_ -> convert "LXXII" |> equal (Ok 72)
            , test "LXXIII" <| \_ -> convert "LXXIII" |> equal (Ok 73)
            , test "LXXIV" <| \_ -> convert "LXXIV" |> equal (Ok 74)
            , test "LXXV" <| \_ -> convert "LXXV" |> equal (Ok 75)
            , test "LXXVI" <| \_ -> convert "LXXVI" |> equal (Ok 76)
            , test "LXXVII" <| \_ -> convert "LXXVII" |> equal (Ok 77)
            , test "LXXVIII" <| \_ -> convert "LXXVIII" |> equal (Ok 78)
            , test "LXXIX" <| \_ -> convert "LXXIX" |> equal (Ok 79)
            , test "LXXX" <| \_ -> convert "LXXX" |> equal (Ok 80)
            ]
        , describe "81-90"
            [ test "LXXXI" <| \_ -> convert "LXXXI" |> equal (Ok 81)
            , test "LXXXII" <| \_ -> convert "LXXXII" |> equal (Ok 82)
            , test "LXXXIII" <| \_ -> convert "LXXXIII" |> equal (Ok 83)
            , test "LXXXIV" <| \_ -> convert "LXXXIV" |> equal (Ok 84)
            , test "LXXXV" <| \_ -> convert "LXXXV" |> equal (Ok 85)
            , test "LXXXVI" <| \_ -> convert "LXXXVI" |> equal (Ok 86)
            , test "LXXXVII" <| \_ -> convert "LXXXVII" |> equal (Ok 87)
            , test "LXXXVIII" <| \_ -> convert "LXXXVIII" |> equal (Ok 88)
            , test "LXXXIX" <| \_ -> convert "LXXXIX" |> equal (Ok 89)
            , test "XC" <| \_ -> convert "XC" |> equal (Ok 90)
            ]
        , describe "91-100"
            [ test "XCI" <| \_ -> convert "XCI" |> equal (Ok 91)
            , test "XCII" <| \_ -> convert "XCII" |> equal (Ok 92)
            , test "XCIII" <| \_ -> convert "XCIII" |> equal (Ok 93)
            , test "XCIV" <| \_ -> convert "XCIV" |> equal (Ok 94)
            , test "XCV" <| \_ -> convert "XCV" |> equal (Ok 95)
            , test "XCVI" <| \_ -> convert "XCVI" |> equal (Ok 96)
            , test "XCVII" <| \_ -> convert "XCVII" |> equal (Ok 97)
            , test "XCVIII" <| \_ -> convert "XCVIII" |> equal (Ok 98)
            , test "XCIX" <| \_ -> convert "XCIX" |> equal (Ok 99)
            , test "C" <| \_ -> convert "C" |> equal (Ok 100)
            ]
        , describe "1000 & 500"
            [ test "M" <| \_ -> convert "M" |> equal (Ok 1000)
            , test "D" <| \_ -> convert "D" |> equal (Ok 500)
            , test "MM" <| \_ -> convert "MM" |> equal (Ok 2000)
            , test "MMM" <| \_ -> convert "MMM" |> equal (Ok 3000)
            , test "MMMM" <| \_ -> convert "MMMM" |> equal (Ok 4000)
            , test "MCMLXXIII" <| \_ -> convert "MCMLXXIII" |> equal (Ok 1973)
            ]
        , describe "Error"
            [ test "IL" <| \_ -> convert "IL" |> equal (Err "'IL' or 'IC' form is not allowed.")
            , test "IC" <| \_ -> convert "IC" |> equal (Err "'IL' or 'IC' form is not allowed.")
            , test "Coucou" <| \_ -> convert "Coucou" |> equal (Err "Unknown char founded.")
            , test "empty" <| \_ -> convert "" |> equal (Err "Empty String")
            , test "LIIII" <| \_ -> convert "LIIII" |> equal (Err "More than 3 same characters.")
            ]
        ]
