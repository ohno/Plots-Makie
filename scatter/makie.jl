using CairoMakie

X = [1, 2, 3, 4, 5]
Y = [1, 4, 9, 16, 25]

fig = scatter(X, Y)

save("./makie.svg", fig)