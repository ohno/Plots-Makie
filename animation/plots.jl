using Plots

anim = Animation()

for i in 1:12
  θ = 2*π*i/12
  plt = plot(
    [-sin(θ), sin(θ)],
    [-cos(θ), cos(θ)],
    xlims = (-1.8, 1.8),
    ylims = (-1.2, 1.2),
    label = "",
    size = (840, 600),
  )
  frame(anim, plt)
end

gif(anim, "./plots.gif", fps = 12)