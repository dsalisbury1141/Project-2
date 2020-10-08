//import data from 'data' from data.js  STEM Data
var tableData = data;

var tbody = d3.select("tbody");

//Create Function for datatable 
function stemTable(data){
  tbody.html("")
  data.forEach(element => {
      let row = tbody.append("tr")
      row.append("td").text(element.Date);
      row.append("td").text(element.Type);
      row.append("td").text(element.Company);
      row.append("td").text(element.Female);
      row.append("td").text(element.Male);
      
  })
}
//load table 
stemTable(tableData)
//create button, select form
var button = d3.select("#filter-btn");
var form = d3.select("#form");
button.on("click",mouseClick);
form.on("submit",mouseClick);

function mouseClick() {
    var datetimeInput = d3.select('#datetime').property('value')
    console.log(tableData)
    var datetimeFilter = tableData.filter(row => row.Date === datetimeInput);
    //var datetimeFilter = tableData.filter(row => row.Date === parseInt(datetimeInput)
   // )
    //var datetimeFilter = tableData.filter(row => row.Type === datetimeInput);
    d3.event.preventDefault()
    stemTable(datetimeFilter);
    console.log(datetimeFilter);
    console.log(datetimeInput);
    
    d3.select("#filter-btn").on("click", mouseClick)
    //d3.select("#button").on("sumbit", mouseClick)

};

