using Plots

labels = ["A", "B", "C", "D"]
values = [5, 60, 15, 25]
pie(labels, values, title="Pie Chart")
savefig("09-piechart.png")
