using Documenter

makedocs(
    sitename="Shader Abstractions",
    authors="James Schloss (Leios)",
    pages = [
        "General Information" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/leios/ShaderAbstractions.jl",
    versions = nothing,
)
