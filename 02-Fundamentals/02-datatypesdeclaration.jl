# Implicit Int (Int64 on 64-bit or Int32 on 32-bit platfrom)
x = 1
println(typeof(x))

# Implicit Float64 type declaration
y = 1.0
println(typeof(y))

# Explicit type declaration 
z::Float16 = 1
println(typeof(z))
