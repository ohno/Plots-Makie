using Plots

X = 1:10
Y = 1:10
Z = [x*y for x∈X, y∈Y]

heatmap(X, Y, Z)

savefig("./plots.svg")