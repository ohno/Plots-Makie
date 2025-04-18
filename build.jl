println("begin")

io = open("./README.md", "w")
println(io, "# Plots-Makie")

for dir in ["templete", "hello", "scatter", "heatmap"]
  cd(dir)
  println(pwd())
  println(io, "")
  println(io, "## [$(uppercasefirst(dir))](./$(dir))")
  println(io, "\n### [Plots.jl](./$(dir)/plots.jl)")
  println(io, "![](./$(dir)/plots.svg)")
  println(io, "\n### [Makie.jl](./$(dir)/makie.jl)")
  println(io, "![](./$(dir)/makie.svg)")
  include("./$(dir)/$(ARGS[1]).jl")
  cd("..")
end

close(io)

println("end")
