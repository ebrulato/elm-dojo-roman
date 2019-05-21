module Roman exposing (convert)

import List exposing (foldr, map)
import String exposing (toList)


type ROMAN
    = I
    | V
    | X
    | L
    | C
    | D
    | M


convert : String -> Result String Int
convert str =
    let
        strMaybeRoman =
            map char2MRoman <| toList str

        strRoman =
            map (Maybe.withDefault I) strMaybeRoman
    in
    if String.isEmpty str then
        Err "Empty String"

    else if List.member Nothing strMaybeRoman then
        Err "Unknown char founded."

    else if checkError4Digit strRoman then
        Err "More than 3 same characters."

    else if isILorIC strRoman then
        Err "'IL' or 'IC' form is not allowed."

    else
        Ok (convert2Int <| strRoman)


char2MRoman c =
    case c of
        'I' ->
            Just I

        'V' ->
            Just V

        'X' ->
            Just X

        'L' ->
            Just L

        'C' ->
            Just C

        'D' ->
            Just D

        'M' ->
            Just M

        _ ->
            Nothing


roman2Int r =
    case r of
        I ->
            1

        V ->
            5

        X ->
            10

        L ->
            50

        C ->
            100

        D ->
            500

        M ->
            1000


isILorIC str =
    let
        ( _, result ) =
            List.foldl
                (\r ( v, b ) ->
                    if b then
                        ( v, b )

                    else if (v == I) && (r == C || r == L) then
                        ( r, True )

                    else if r == I then
                        ( I, False )

                    else
                        ( r, False )
                )
                ( X, False )
                str
    in
    result


checkError4Digit str =
    let
        ( _, result ) =
            List.foldl
                (\r ( mr, acc ) ->
                    case ( r, mr ) of
                        ( v1, Just v2 ) ->
                            if v1 == v2 && v1 /= M then
                                ( mr, acc + 1 )

                            else if acc >= 4 then
                                ( mr, acc )

                            else
                                ( Just r, 1 )

                        _ ->
                            ( Just r, 1 )
                )
                ( Nothing, 0 )
                str
    in
    result >= 4


convert2Int : List ROMAN -> Int
convert2Int str =
    let
        ( _, result ) =
            foldr
                (\i ( prev, acc ) ->
                    if i < acc && i < prev then
                        ( i, acc - i )

                    else
                        ( i, acc + i )
                )
                ( 0, 0 )
            <|
                map roman2Int <|
                    str
    in
    result
