var margin = {
            top: 50,
            right: 70,
            bottom: 100,
            left: 70
      },
      width = 960 - margin.left - margin.right,
      height = 500 - margin.top - margin.bottom;


var parseDate = d3.timeParse("%d-%b-%y");
var formatTime = d3.timeFormat("%e %b %Y");

var x = d3.scaleTime()
      .range([0, width]);
var y0 = d3.scaleLinear()
      .range([height, 0]);
var y1 = d3.scaleLinear()
      .range([height, 0]);


var xAxis = d3.axisBottom(x)
.tickFormat(d3.timeFormat("%Y-%m-%d")); // Change the format of tick labels

var yAxisLeft = d3.axisLeft(y0);

var yAxisRight = d3.axisRight(y1);


var pet_weight_line = d3.line()
      .x(function (d) {
            return x(d.date);
      })
      .y(function (d) {
            return y0(d.weight);
      })
      .curve(d3.curveNatural);


var food_amount_line = d3.line()
      .x(function (d) {
            return x(d.date);
      })
      .y(function (d) {
            return y1(d.food_amount);
      });;


var div = d3.select("#visualisation").append("div")
      .attr("class", "tooltip")
      .style("opacity", 0);

// append the svg obgect to the div with id visualisation
// appends a 'group' element to 'svg'
// moves the 'group' element to the top left margin
var svg = d3.select("#visualisation")
      .append("svg")
      .attr("width", width + margin.left + margin.right)
      .attr("height", height + margin.top + margin.bottom)
      .append("g")
      .attr("transform",
            "translate(" + margin.left + "," + margin.top + ")");
var data = [
  {
    "date": "1-May-12",
    "weight": 58.13,
    "food_amount": 78.13
  },
  {
    "date": "30-Apr-12",
    "weight": 53.98,
    "food_amount": 93.98
  },
  {
    "date": "27-Apr-12",
    "weight": 67,
    "food_amount": 57
  },
  {
    "date": "26-Apr-12",
    "weight": 89.7,
    "food_amount": 79.7
  },
  {
    "date": "25-Apr-12",
    "weight": 99,
    "food_amount": 69
  },
  {
    "date": "24-Apr-12",
    "weight": 130.28,
    "food_amount": 30.28
  },
  {
    "date": "23-Apr-12",
    "weight": 166.7,
    "food_amount": 66.7
  },
  {
    "date": "20-Apr-12",
    "weight": 234.98,
    "food_amount": 34.98
  },
  {
    "date": "19-Apr-12",
    "weight": 345.44,
    "food_amount": 45.44
  },
  {
    "date": "18-Apr-12",
    "weight": 443.34,
    "food_amount": 43.34
  },
  {
    "date": "17-Apr-12",
    "weight": 543.7,
    "food_amount": 43.7
  },
  {
    "date": "16-Apr-12",
    "weight": 580.13,
    "food_amount": 80.13
  },
  {
    "date": "13-Apr-12",
    "weight": 605.23,
    "food_amount": 5.23
  },
  {
    "date": "12-Apr-12",
    "weight": 622.77,
    "food_amount": 22.77
  },
  {
    "date": "11-Apr-12",
    "weight": 626.2,
    "food_amount": 26.2
  },
  {
    "date": "10-Apr-12",
    "weight": 628.44,
    "food_amount": 28.44
  },
  {
    "date": "9-Apr-12",
    "weight": 636.23,
    "food_amount": 36.23
  },
  {
    "date": "5-Apr-12",
    "weight": 633.68,
    "food_amount": 33.68
  },
  {
    "date": "4-Apr-12",
    "weight": 624.31,
    "food_amount": 24.31
  },
  {
    "date": "3-Apr-12",
    "weight": 629.32,
    "food_amount": 29.32
  },
  {
    "date": "2-Apr-12",
    "weight": 618.63,
    "food_amount": 18.63
  },
  {
    "date": "30-Mar-12",
    "weight": 599.55,
    "food_amount": 99.55
  },
  {
    "date": "29-Mar-12",
    "weight": 609.86,
    "food_amount": "09.86"
  },
  {
    "date": "28-Mar-12",
    "weight": 617.62,
    "food_amount": 17.62
  },
  {
    "date": "27-Mar-12",
    "weight": 614.48,
    "food_amount": 14.48
  },
  {
    "date": "26-Mar-12",
    "weight": 606.98,
    "food_amount": 6.98
  }
];

// Get the data
data.forEach(function (d) {
      d.date = parseDate(d.date);
      d.weight = +d.weight;
      d.food_amount = +d.food_amount;
});

// Scale the range of the data
x.domain(d3.extent(data, function (d) {

      return d.date;
}));
y0.domain([
      d3.min(data, function (d) {
            return d.weight -20;
      }),

      d3.max(data, function (d) {
            return d.weight;
      })
]);

y1.domain([
      d3.min(data, function (d) {
            return d.food_amount -10;
      }), 
      
      d3.max(data, function (d) {
            return d.food_amount;
      })
]);


svg.append("path")
      .attr("class", "line")
      .attr("id", "blueLine")
      .attr("d", pet_weight_line(data));


svg.selectAll("dot")
      .data(data)
      .enter().append("circle")
      .attr("r", 5)
      .attr("class", "blueDots")
      //    .attr("opacity", "1")
      .attr("cx", function (d) {
            return x(d.date);
      })
      .attr("cy", function (d) {
            return y0(d.weight);
      })
      .on("mouseover", function (d) {
            div.transition()
                  .duration(200)
                  .style("opacity", .85);
            div.html(formatTime(d.date) + "<br/>" + d.weight + " g")
                  .style("left", (d3.event.pageX) + "px")
                  .style("top", (d3.event.pageY - 50) + "px");
      })
      .on("mouseout", function (d) {
            div.transition()
                  .duration(500)
                  .style("opacity", 0);
      });

svg.append("path")
      .attr("class", "line")
      .style("stroke", "red")
      .attr("id", "redLine")
      .attr("d", food_amount_line(data));


svg.selectAll("dot")
      .data(data)
      .enter().append("circle")
      .attr("r", 5)
      .attr("class", "redDots")
      //  .attr("opacity", "1")
      .attr("cx", function (d) {
            return x(d.date);
      })
      .attr("cy", function (d) {
            return y1(d.food_amount);
      })
      .on("mouseover", function (d) {
            div.transition()
                  .duration(200)
                  .style("opacity", .85);
            div.html(formatTime(d.date) + "<br/>" + d.food_amount + " g")
                  .style("left", (d3.event.pageX) + "px")
                  .style("top", (d3.event.pageY - 50) + "px");
      })
      .on("mouseout", function (d) {
            div.transition()
                  .duration(500)
                  .style("opacity", 0);
      });

      // Add X axis
svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis)
      // Rotate x axis tick labels
      .selectAll("text")  
      .style("text-anchor", "end")
      .attr("dx", "-.8em")
      .attr("dy", ".15em")
      .attr("transform", "rotate(-65)" );

// edit the Y Axis Left
svg.append("g")
      .attr("class", "y axis")
      .style("fill", "steelblue")
      .attr("id", "blueAxis")
      .call(yAxisLeft);

// Add Y axis right
svg.append("g")
      .attr("class", "y axis")
      .attr("transform", "translate(" + width + " ,0)")
      .style("fill", "red")
      .attr("id", "redAxis")
      .call(yAxisRight);

// Add left axis label title
svg.append("text")
      .attr("transform", "rotate(-90)")
      .attr("x", -70 - (height / 2))
      .attr("y", 25 - margin.left)
//      .attr("x", -30)
//      .attr("y", height + margin.top + 5)
      .attr("class", "legend")
      .style("fill", "steelblue")
      .on("click", function () {
            // Determine if current line is visible
            var active = blueLine.active ? false : true,
                  newOpacity = active ? 0 : 1;
            // Hide or show the elements
            d3.select("#blueLine").style("opacity", newOpacity);
            d3.select("#blueAxis").style("opacity", newOpacity);
            d3.selectAll(".blueDots").style("opacity", newOpacity);
            // Update whether or not the elements are active
            blueLine.active = active;
      })
      .text("Pet weight (in grams)");

// Add right axis label title
svg.append("text")
      .attr("transform", "rotate(-90)")
      .attr("x", -70 - (height / 2))
      .attr("y", -20 + width + margin.right)
      
  //    .attr("x", 730)
  //    .attr("y", height + margin.top + 5)
      .attr("class", "legend")
      .style("fill", "red")
      .on("click", function () {
            // Determine if current line is visible
            var active = redLine.active ? false : true,
                  newOpacity = active ? 0 : 1;
            // Hide or show the elements
            d3.select("#redLine").style("opacity", newOpacity);
            d3.select("#redAxis").style("opacity", newOpacity);
            d3.selectAll(".redDots").style("opacity", newOpacity);
            // Update whether or not the elements are active
            redLine.active = active;
      })
      .text("Food amount (in grams)");

 // Add X axis label text
svg.append("text")
      .attr("x", width / 2 )
      .attr("y", height + margin.top + 35)
      .attr("class", "legend")
//      .style("text-anchor", "middle")
      .text("Date");

console.log(window.innerWidth);