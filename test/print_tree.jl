using ModelingToolkit, AbstractTrees, Test

include("components.jl")

io = IOBuffer()
print_tree(io, rc_model)
ser = String(take!(io))
str = 
"""rc_model
├─ resistor
│  ├─ p
│  └─ n
├─ capacitor
│  ├─ p
│  └─ n
├─ source
│  ├─ p
│  └─ n
└─ ground
   └─ g
"""
@test ser == strip(str)
