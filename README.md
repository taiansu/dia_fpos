# DiaFpos

Detailed description in this [elixir forum post](https://elixirforum.com/t/dialyxir-cant-detect-error-of-anonymous-function-while-erlang-can/17920)

Demostrate that dialyxir gives false positive result for Elixir anonymouse fuction type spec, but
report Erlang file issue correctly.


run
```
mix dialyzer
```

Environment:

  dialixir: 1.0.0-rc4
  Elixir: 1.8.0-otp-21 (same behavior observed from 1.7.4)
  Erlang: 21.2.4 (same behavoir observed from 21.1.1)
  macOS 10.14.2
