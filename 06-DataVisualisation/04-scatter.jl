using Plots

x = randn(10)
y = randn(10)

scatter(x, y, label="Points", xlabel="X-axis", ylabel="Y-axis", title="Scatter Plot")
savefig("04-scatter.png")
