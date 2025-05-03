using CairoMakie

X = 0:0.1:12
Y = 0:0.1:12
Z = [cos(x) * sin(y) for x in X, y in Y]

fig = surface(X, Y, Z, axis=(type=Axis3,))

save("./makie.png", fig)