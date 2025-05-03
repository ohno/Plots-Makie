using Plots

X = randn(10000)
histogram(X)

savefig("./plots.svg")