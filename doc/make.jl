using Documenter, QuHamiltonian

makedocs(
     modules = [QuHamiltonian],
     format  = :html,
     sitename = "QuHamiltonian",
     pages = Any[
         "Introduction"   => "index.md"
     ],
     # Use clean URLs, unless built as a "local" build
     html_prettyurls = !("local" in ARGS),
     # html_canonical = "https://juliadocs.github.io/Documenter.jl/latest/",
)

deploydocs(
     repo = "git@github.com:Roger-luo/QuHamiltonian.jl.git",
     target = "build",
     julia = "1.0",
     osname = "linux",
     deps = nothing,
     make = nothing,
)
