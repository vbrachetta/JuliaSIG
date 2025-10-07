using Plots

x, y, z = rand(10), rand(10), rand(10)

scatter3d(x, y, z, label="Points", xlabel="X", ylabel="Y", zlabel="Z", title="3D Scatter Plot")
savefig("05-3Dplot.png")

