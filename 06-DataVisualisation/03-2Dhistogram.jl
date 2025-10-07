using Plots

x = randn(100)
y = randn(100)
histogram2d(x, y, label="Experimental values")
title!("Distribution of data")
xlabel!("x")
ylabel!("y")
savefig("03-2Dhistogram.png")
