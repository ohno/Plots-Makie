println("begin")

io = open("./README.md", "w")
println(io, "# Plots-Makie")

for dir in ["template", "hello", "lines", "scatter", "histogram", "surface", "heatmap", "subplot", "grid", "text", "artistic", "animation"]
  cd(dir)
  extension =
    if dir == "animation"
      "gif"
    elseif dir == "surface"
      "png"
    else
      "svg"
    end
  println(pwd())
  println(io, "")
  println(io, "## [$(uppercasefirst(dir))](./$(dir))")
  println(io, "\n### [Plots.jl](./$(dir)/plots.jl)")
  println(io, "![](./$(dir)/plots.$(extension))")
  println(io, "\n### [Makie.jl](./$(dir)/makie.jl)")
  println(io, "![](./$(dir)/makie.$(extension))")
  include("./$(dir)/$(ARGS[1]).jl")
  cd("..")
end

close(io)

println("end")
