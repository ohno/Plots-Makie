using Plots

ps = []

for n in 1:9
  p = plot(-5:0.1:5, x -> x^(n-1) * exp(-x^2))
  push!(ps, p)
end

plot(ps..., layout=(3,3))

savefig("./plots.svg")