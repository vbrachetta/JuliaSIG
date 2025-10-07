using Plots

x = randn(100)
histogram(x, label="Experimental values")
title!("Distribution of data")
xlabel!("x")
ylabel!("P(x)")
savefig("02-histogram.png")
