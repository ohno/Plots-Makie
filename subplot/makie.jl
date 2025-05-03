using CairoMakie

fig = Figure()

a1 = Axis(fig[1,1])
a2 = Axis(fig[1,2])
a3 = Axis(fig[2,1])
a4 = Axis(fig[2,2])

lines!(a1, -5..5, sin)
lines!(a2, -5..5, cos)
lines!(a3, -5..5, exp)
lines!(a4, -5..5, abs)

save("./makie.svg", fig)