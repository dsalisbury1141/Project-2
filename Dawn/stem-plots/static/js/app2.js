  //var tableData = data;
  var stemData = data;
  console.log(stemData)


// Trace1 for the Student Data
var trace1 = {
    x: data.map(row => row.Company),
    y: data.map(row => row.Male),
    text: data.map(row => row.Type),  //Date
   // text: data.map(row => row.Female),
    name: "Male",
    type: "bar"
  };
  
  // Trace 2 for the Student Data
  var trace2 = {
    x: data.map(row => row.Company),
    y: data.map(row => row.Female),
    text: data.map(row => row.Type), //Date

    name: "Female",
    type: "bar"
  };
  
  // Combining both traces
  var data = [trace1, trace2];
  
  // Apply the group barmode to the layout
  var layout = {
    title: "Comparison of Male and Female STEM Employees 2014 - 2018",
    
    margin: {
      l: 100,
      r: 100,
      t: 100,
      b: 100
     
    }
    //barmode: "group"
  };
  
  // Render the plot to the div tag with id "plot"
  Plotly.newPlot("plot", data, layout);
  