using Plots

plot(0:0.1:50, x -> x*sin(x))

savefig("./plots.svg")