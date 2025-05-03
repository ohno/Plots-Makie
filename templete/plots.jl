using Plots
using LaTeXStrings

plot(
  size = (420,300),
  title = "Title",
  xlabel = L"x",
  ylabel = L"y",
  titlefontsize = 11,
  guidefont = 11,
  legendfontsize = 9,
  tickfontsize = 7,
  framestyle = :box,
  background_color = :transparent,
  background_color_legend = :transparent,
  foreground_color_legend = :transparent,
)

plot!(
  x -> x^2,
  xlims = (0,5),
  ylims = (0,50),
  label = L"y = x^2",
  lw = 1.5,
  lc = "#224466",
)

plot!(
  x -> x^3,
  xlims = (0,5),
  ylims = (0,50),
  label = L"y = x^3",
  lw = 1.5,
  lc = "#BC1C5F",
)

savefig("./plots.svg")