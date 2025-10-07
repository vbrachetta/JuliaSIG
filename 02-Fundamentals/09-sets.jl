# Mutable containers: sets (duplicates removed)
s = Set([1, 2, 2, 3])
push!(s, 4)                  
println(in(2, s))
