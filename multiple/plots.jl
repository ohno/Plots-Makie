using Plots

plt = plot(legend = :bottomright)
plot!(plt, 0:0.1:5, x -> x^2, label = "line")
scatter!(plt, [1,2,3,4], [1,5,8,17], label = "scatter")

savefig("./plots.svg")