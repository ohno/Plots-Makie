using Plots

plt = plot(
  size = (420,420),
  background_color = "#FFFFFF",
  xlims = (-5, 5),
  ylims = (-5, 5),
  xgrid = false,
  ygrid = false,
  xticks = false,
  yticks = false,
  xshowaxis = false,
  yshowaxis = false,
  top_margin = Plots.Measures.Length(:mm, -2),
  left_margin = Plots.Measures.Length(:mm, -2),
  right_margin = Plots.Measures.Length(:mm, -2),
  bottom_margin = Plots.Measures.Length(:mm, -2),
)

vline!(
  plt,
  -4.5:4.5,
  lw = 20,
  color = "#FF0000",
  alpha = 0.5,
  label = false,
)

hline!(
  plt,
  -4.5:4.5,
  lw = 20,
  color = "#FF0000",
  alpha = 0.5,
  label = false,
)

savefig("./plots.svg")