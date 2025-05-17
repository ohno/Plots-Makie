using CairoMakie

fig = Figure(
  size = (420,300),
  fontsize = 11,
  backgroundcolor = :transparent,
)

axis = Axis(
  fig[1,1],
  limits = (0, 5, 0, 50),
  title = "Title",
  xlabel = L"x",
  ylabel = L"y",
  titlesize = 16.5,
  xlabelsize = 16.5,
  ylabelsize = 16.5,
  backgroundcolor = :transparent,
)

lines!(
  axis,
  0..5,
  x -> x^2,
  label = L"y = x^2",
  color = "#224466",
)

lines!(
  axis,
  0..5,
  x -> x^3,
  label = L"y = x^3",
  color = "#BC1C5F",
)

axislegend(
  axis,
  position = :rt,
  framevisible = false
)

save("./makie.svg", fig)