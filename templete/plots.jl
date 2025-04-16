using Plots
using LaTeXStrings

plot(
  size = (420,300),
  title = "Title",
  xlabel = L"x",
  ylabel = L"y",
  titlefontsize = 12,
  guidefont = 12,
  legendfontsize = 10,
  tickfontsize = 8,
  background_color = :transparent,
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

savefig("./plots.svg")