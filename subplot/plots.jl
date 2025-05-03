using Plots

p1 = plot(sin, label="")
p2 = plot(cos, label="")
p3 = plot(exp, label="")
p4 = plot(abs, label="")

plot(p1, p2, p3, p4, layout=(2,2))

savefig("./plots.svg")