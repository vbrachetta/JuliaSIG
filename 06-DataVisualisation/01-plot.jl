# If you have not installed the "Plots" package, you can do so by running the following line of code:
# using Pkg; Pkg.add("Plots") # Uncomment this line to install the Plots package
using Plots

x = range(0, 10, length=100)
y = sin.(x)
plot(x, y)
savefig("01-plot.png")
