using Plots

plt = plot(legend = :bottomright)
plot!(plt, 0:0.1:1.0, sin, label = "line")
scatter!(plt, 0:0.1:1.0, sin, label = "scatter")

savefig("./plots.svg")