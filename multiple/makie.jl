using CairoMakie

fig = Figure()
axis = Axis(fig[1,1])
lines!(axis, 0:0.1:1, sin, label="line")
scatter!(axis, 0:0.1:1, sin, label="scatter")
axislegend(axis, position=:rb, framevisible=false)

save("./makie.svg", fig)