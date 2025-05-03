using CairoMakie

X = randn(10000)
fig = hist(X)

save("./makie.svg", fig)