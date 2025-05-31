using CairoMakie

fig = Figure()
axis = Axis(fig[1,1])
lines!(axis, 0..5, x -> x^2, label="line")
scatter!(axis, [1,2,3,4], [1,5,8,17], label="scatter")
axislegend(axis, position=:rb, framevisible=false)

save("./makie.svg", fig)