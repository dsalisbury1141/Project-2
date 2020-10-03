//import data from 'data';
// from data.js  UFO Data
var tableData = data;

var tbody = d3.select("tbody");


function ufoTable(data){
  tbody.html("")
  data.forEach(element => {
      let row = tbody.append("tr")
      row.append("td").text(element.Date);
      row.append("td").text(element.Type);
      row.append("td").text(element.Company);
      row.append("td").text(element.Female);
      
  })
}
//load table 
ufoTable(tableData)
//create button, select form
var button = d3.select("#filter-btn");
var form = d3.select("#form");
button.on("click",mouseClick);
form.on("submit",mouseClick);

function mouseClick() {
    var datetimeInput = d3.select("#datetime").property("value")
    var datetimeFilter = tableData.filter(row => row.datetime === datetimeInput);
    d3.event.preventDefault()
    ufoTable(datetimeFilter);
    console.log(datetimeFilter);
    console.log(datetimeInput);
    
    d3.select("#filter-btn").on("click", mouseClick)
    //d3.select("#button").on("sumbit", mouseClick)

};
