# Pattern: Compact

## Category

Built-in Functions

## Definition
`compact()` dynamically creates a new PHP array containing the passed variables. The variables are passed by name, i.e. as string.
## Instances

### Instance 1

Simple case. XSS in `p1`.

### Instance 2
Dynamic case, user input is used as param in `compact()`. `p2` needs to be set to `"event"` to trigger XSS via `p1`.

