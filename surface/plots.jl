using Plots

X = 0:0.1:12
Y = 0:0.1:12
Z = [cos(x) * sin(y) for x in X, y in Y]

surface(X, Y, Z, camera=(45,30))

savefig("./plots.png")