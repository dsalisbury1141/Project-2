//import data from 'data' from data.js  STEM Data
var stemData = data;

var tbody = d3.select("tbody");
stemData.forEach(function(stemDemo){
  console.log(stemDemo);
  });

  //Function to create tabe rows
stemData.forEach(function(stemDemo){
  var row = tbody.append("tr");
  Object.entries(stemDemo).forEach(([key, value])=> {
    var cell = row.append("td");
    cell.text(value);
  });

});

// Create button
var button = d3.select('#filter-btn')

var form = d3.select('#form-group')

//Event Handlers
button.on("click", runEnter);
form.on("submit", runEnter);

//Even handler functions

function runEnter() {
    
    tbody.html("");

    d3.event.preventDefault();

    var inputElement = d3.select("#datetime");

    var inputValue = inputElement.property("value");

    console.log(inputValue);

    //Create filters to search

    var filterData = stemData.filter(stemData => stemData.Date === inputValue ||
        stemData.Date === inputValue ||
        stemData.Type === inputValue ||
        stemData.Company === inputValue ||
        stemData.Female === inputValue ||
        stemData.Male === inputValue);

    console.log(filterData);

    //var datetimeFilter = stemData.filter(row => row.Date === parseInt(datetimeInput)
// Filters append and return values
    filterData.forEach(function(filteredsearch){
        var row = tbody.append("tr");
        Object.entries(filteredsearch).forEach(([key, value]) => {
            var cell = row.append("td");
            cell.text(value);
    });


});
};


