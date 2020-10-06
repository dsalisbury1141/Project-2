// Create an array of each country's numbers
var bio = Object.values(data.bio);
var computers = Object.values(data.computers);
var engineering = Object.values(data.engineering);
var health = Object.values(data.health);
var sciences = Object.values(data.sciences);
var total = Object.values(data.total);

// Create an array of music provider labels
var labels = Object.keys(data.bio);

// Display the default plot
function init() {
    var data = [{
        values: bio,
        labels: labels,
        type: "pie"
    }];

    var layout = {
        height: 600,
        width: 800
    };

    Plotly.newPlot("pie", data, layout);
}

// On change to the DOM, call getData()
d3.selectAll("#selDataset").on("change", getData);

// Function called by DOM changes
function getData() {
    var dropdownMenu = d3.select("#selDataset");
    // Assign the value of the dropdown menu option to a variable
    var dataset = dropdownMenu.property("value");
    // Initialize an empty array for the country's data
    var data = [];

    if (dataset == 'bio') {
        data = bio;
    }
    else if (dataset == 'computers') {
        data = computers;
    }
    else if (dataset == 'engineering') {
        data = engineering;
    }
    else if (dataset == 'health') {
        data = health;
    }
    else if (dataset == 'sciences') {
        data = sciences;
    }
    else if (dataset == 'total') {
        data = total;
    }

    // Call function to update the chart
    updatePlotly(data);
}

// Update the restyled plot's values
function updatePlotly(newdata) {
    Plotly.restyle("pie", "values", [newdata]);
}

init();
