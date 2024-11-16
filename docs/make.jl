using MyExample
using Documenter

DocMeta.setdocmeta!(MyExample, :DocTestSetup, :(using MyExample); recursive=true)

makedocs(;
    modules=[MyExample],
    authors="Gianluca Grosso <gianluca.grosso@campus.lmu.de> and contributors",
    sitename="MyExample.jl",
    format=Documenter.HTML(;
        canonical="https://gianlucagrosso.github.io/MyExample.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gianlucagrosso/MyExample.jl",
    devbranch="main",
)
