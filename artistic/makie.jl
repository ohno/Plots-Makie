using CairoMakie

fig = Figure(
  size = (420,420),
  figure_padding = 0
)

axis = Axis(
  fig[1,1],
  aspect = 1,
  backgroundcolor = "#FFFFFF",
  limits = (-5,5,-5,5)
)

vlines!(
  axis,
  -4.5:4.5,
  linewidth = 20,
  color = "#FF0000",
  alpha = 0.5
)

hlines!(
  axis,
  -4.5:4.5,
  linewidth = 20,
  color = "#FF0000",
  alpha = 0.5
)

hidespines!(axis)
hidedecorations!(axis)

save("makie.svg", fig)
     