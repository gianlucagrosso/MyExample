cd(@__DIR__) # go to docs folder

using MyExample
using Documenter
using Pkg
using DocumenterCitations

Pkg.activate(@__DIR__)

# Pages that compose our documentation 
pages=[
        "Home" => "index.md", # Mandatory
        "Reference" => "reference.md",
        "API" => "api.md"
    ]

# bibliography
bib = CitationBibliography(joinpath(@__DIR__, "src", "refs.bib"))

DocMeta.setdocmeta!(MyExample, :DocTestSetup, :(using MyExample); recursive=true)

makedocs(;
    modules=[MyExample], # it tells from which module to take the docstrings
    authors="Gianluca Grosso <gianluca.grosso@campus.lmu.de> and contributors",
    sitename="MyExample.jl",
    format=Documenter.HTML(;
        canonical="https://gianlucagrosso.github.io/MyExample.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=pages,
    plugins = [bib],
)

deploydocs(;
    repo="github.com/gianlucagrosso/MyExample.git",
    devbranch="main",
)
