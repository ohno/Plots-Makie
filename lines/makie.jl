using CairoMakie

fig = lines(0:0.1:50, x -> x*sin(x))

save("./makie.svg", fig)