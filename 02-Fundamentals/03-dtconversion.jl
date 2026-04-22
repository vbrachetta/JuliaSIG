x = 1.0
println("Type of x BEFORE: ", typeof(x))
x = convert(UInt8, x) # Convert to unsigned 8-bit integer (range: [0,255])
println("Type of x AFTER: ", typeof(x))

