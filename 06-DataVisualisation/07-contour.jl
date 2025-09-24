using Plots

x = y = range(-2, 2, length=50)
z = [(xi^2 + yi^2) for xi in x, yi in y]
contour(x, y, z, xlabel="X", ylabel="Y", title="Contour Plot")
savefig("07-contour.png")
