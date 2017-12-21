# argv

Simple command-line tester. Prints command-line arguments provided and exits.
This is useful for debugging any code that launches external processes, where
commonly there is an issue with what arguments end up getting passed through
the underlying escaping mechanisms etc.

Example printout on a Windows command-line:

```
λ argv arg-1 "arg2 with spaces" arg3\"with\"embedded" quotes and spaces"
0: [argv]
1: [arg-1]
2: [arg2 with spaces]
3: [arg3"with"embedded quotes and spaces]
```
