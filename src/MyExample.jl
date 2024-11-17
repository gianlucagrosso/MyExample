module MyExample

# --- imports ---
using LinearAlgebra
using Statistics

# --- includes ---
include("MyFunctions.jl") # include is like copy-pasting
include("MyTypes.jl")

# --- exports --- 
export some, another # Function or types that can be fully qualified by julia
                     # Most common used methods, better if not common used names

end
