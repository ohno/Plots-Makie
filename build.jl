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
  print(io, "\n")
  print(io, "## [$(uppercasefirst(dir))](./$(dir))\n\n")
  print(io, "| [Plots.jl](./$(dir)/plots.jl) ")
  print(io, "| [Makie.jl](./$(dir)/makie.jl) ")
  print(io, "|\n")
  print(io, "| --- | --- |\n")
  print(io, "| ![](./$(dir)/plots.$(extension)) ")
  print(io, "| ![](./$(dir)/makie.$(extension)) ")
  print(io, "|\n")
  include("./$(dir)/$(ARGS[1]).jl")
  cd("..")
end

close(io)

println("end")
