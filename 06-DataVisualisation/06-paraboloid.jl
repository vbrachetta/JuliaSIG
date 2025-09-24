using Plots

x = y = range(-2, 2, length=50)
z = [(xi^2 + yi^2) for xi in x, yi in y]

surface(x, y, z, xlabel="X", ylabel="Y", zlabel="Z", title="3D Surface Plot")
savefig("06-paraboloid.png")
