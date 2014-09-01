width = 960
height = 800

svg = d3.select("#container").append("svg")
  .attr("width", width)
  .attr("height", height)

d3.json("index.json", (json) ->
  elem = svg.selectAll("g myCircleText")
      .data(json)

  elemEnter = elem.enter()
      .append("g")
      .attr("transform", (d, i) -> return "translate(" + i * 40 + "," + i * 30 + ")")

  circle = elemEnter.append("circle")
      .attr("r", (d) -> return d.size * 10 )
      .attr("stroke","black")
      .attr("fill", "white")

  elemEnter.append("text")
      .attr("dx", (d) -> return -20)
      .text( (d,i) -> return d.title)
)