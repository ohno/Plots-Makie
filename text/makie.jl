using CairoMakie

fig = Figure()

axis = Axis(
  fig[1,1],
  title = "title",
  xlabel = "xlabel",
  ylabel = "ylabel",
  xticks = ([0,1,3], ["A","B","C"]),
)

lines!(axis, -3..3, sin, label = "label")

axislegend(axis, position=:lt)

text!(axis, -pi/2, -1, text=   "min", align=(:center,:bottom))
text!(axis,     0,  0, text="origin", align=(:center,:center))
text!(axis,  pi/2,  1, text=   "max", align=(:center,:top))

text!(axis, -1, 0.5, text="aaaaa")

text!(
  axis,
  [pi/2, pi/2, pi/2],
  [0.0, 0.1, 0.2],
  text = ["a","b","c"],
  rotation = [0, 45, 90],
  align = (:center,:center),
)

save("./makie.svg", fig)