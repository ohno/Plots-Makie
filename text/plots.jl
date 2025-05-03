using Plots

plot(-3:0.1:3, sin, title="title", label="label", xlabel="xlabel", ylabel="ylabel")

xticks!([0,1,3], ["A", "B", "C"])

plot!(annotations=(-pi/2, -1, ("min", 8, 0.0, :bottom)))
plot!(annotations=(0, 0, ("origin", 8, 0.0, :center)))
plot!(annotations=(pi/2, 1, ("max", 8, 0.0, :top)))

annotate!(-1, 0.5, "aaaaa")

plot!(annotations=[
    (pi/2, 0.0, ("a", 8, 0.0, :center)),
    (pi/2, 0.1, ("b", 8, 45.0, :center)),
    (pi/2, 0.2, ("c", 8, 90.0, :center)),
])

savefig("./plots.svg")