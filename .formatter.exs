[
  inputs: ["mix.exs", "{config,lib,test}/**/*.{ex,exs}"],
  import_deps: [:phoenix, :ecto]
  locals_without_parens: [
    # Kernel
    inspect: 1,
    inspect: 2,

    # Distillery
    set: 1
  ]
]
