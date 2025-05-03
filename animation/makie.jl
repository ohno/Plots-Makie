using CairoMakie

fig = Figure()

axis = Axis(
  fig[1,1],
  limits = (-1.8, 1.8, -1.2, 1.2),
)

record(fig, "makie.gif", 1:12, framerate = 12) do i
  empty!(axis)
  θ = 2*π*i/12
  lines!(
    axis,
    [-sin(θ), sin(θ)],
    [-cos(θ), cos(θ)],
    color = "#4063D8",
  )
end
