# 2. Manipulating values

## Strings

- `++` to combine strings, `+` only for addition
- to convert a int to a string `String.fromInt [int value]`

```elm
pluralise singular plural quantity = 
    if quantity == 1 then
        String.fromInt quantity ++ " " ++ singular
    else
        String.fromInt quantity ++ " " ++ plural
```

## Let expressions

- `let` allows you to create new values in their own scope

```elm
pluralise singular plural quantity = 
    let
        quanityStr =
            String.fromInt quantity
        prefix =
            quanityStr ++ " "
    in  
    if quantity == 1 then
        prefix ++ singular
    else
        prefix ++ plural
```

## List

- immutation linked list.
- Lists must be of same type

```elm
List.map(\str -> String.toUpper str ++ "!")["pow", "zap"]
```

## Partial application

```elm
-- these 2 functions are the same.
List.map(\num -> pluralise "leaf" "leaves" num)[0,1,2]
-- not passing anonymous function. Elm does not 
-- execute function. It creates an anonymous function
-- then using the value that are remaining [1,2,3]
List.map(pluralise "leaf" "leaves")[0,1,2]

-- this                     -- to this
names = [                   ul []
   "Erica"                  [ li [] [text "Erica"] 
 , "Shuri"                  , li [] [text "Shuri"]             
 , "Lee"                    , li [] [text "Lee"]                   
 ]                          ]
 
 -- create function to display the name
 viewName name = 
     li [] [text name]
     
 ul [] (List.map viewName names)
```                         
