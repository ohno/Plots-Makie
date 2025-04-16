using CairoMakie

X = 1:10
Y = 1:10
Z = [x*y for x∈X, y∈Y]

fig = heatmap(X, Y, Z)

save("./makie.svg", fig)