using CairoMakie
fig = lines(0:0.1:10, sin)
save("./makie.svg", fig)