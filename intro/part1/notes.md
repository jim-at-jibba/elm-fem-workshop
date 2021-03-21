# Basics

- to compile - `elm make Main.elm --output elm.js`

If statement in elm similar to ternary in js. 

```elm
x = if quantity == 1 then
        singular
    else
        plural
```
```js
x = (quantity === 1 ? singular : plural)
```

## Nested function calls

- `()` used to disambiguate the nexted function call. the `text
function is calling the result of the `pluralise` function

```elm
pluralise singular plural quantity = 
    if quantity == 1 then
        singular
    else
        plural

main = -- this is a comment
    text (pluralise "leaf" "leaves" 1)
```
