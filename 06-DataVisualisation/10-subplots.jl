using Plots

# Data for plots
x = y = range(-2, 2, length=50)
z = [(xi^2 + yi^2) for xi in x, yi in y]
labels = ["A", "B", "C", "D"]
values = [5, 60, 15, 25]
scatter_x = rand(10)
scatter_y = rand(10)

# Create subplots
p1 = surface(x, y, z, xlabel="X", ylabel="Y", zlabel="Z", title="3D Surface Plot")
p2 = contour(x, y, z, xlabel="X", ylabel="Y", title="Contour Plot")
p3 = pie(labels, values, title="Pie Chart")
p4 = scatter(scatter_x, scatter_y, label="Points", xlabel="X-axis", ylabel="Y-axis", title="Scatter Plot")

# Combine all plots in one figure
plot(p1, p2, p3, p4, layout=(2, 2))
savefig("10-subplots.png")
