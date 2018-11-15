# DiaFpos

Demostrate that dialyxir gives false positive result for Elixir anonymouse fuction type spec, but
report Erlang file issue correctly.

run
```
mix dialyzer --format raw
```

Will get a `(UndefinedFunctionError) function Dialyxir.Project.filter_warnings/1 is undefined or private` if we don't specify the format. But that's a different issue.
