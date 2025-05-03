using CairoMakie

fig = Figure(
  size = (840,600),
)

for n in 1:9
  axis = Axis(fig[div(n-1,3)+1,rem(n-1,3)+1])
  lines!(axis, -5..5, x -> x^(n-1) * exp(-x^2))
end

save("./makie.svg", fig)