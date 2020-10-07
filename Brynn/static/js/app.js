const employee_year_url = "/employee_demographic_years"
const employee_url = "/employee_demographics"

function plot_employee_by_date(selected_date) {
    fetch(employee_url + "/" + selected_date)
        .then(response => response.json())
        .then(data => {
            some_data = data.slice(0, 5)

            var companies = []
            some_data.forEach(x => {
                companies.push(x.Company + " - Female")
                companies.push(x.Company + " - Male")
            })

            var sample_values = []
            some_data.forEach(x => {
                sample_values.push(x.Female)
                sample_values.push(x.Male)
            })

            //data for bar chart
            var bar_data = [{
                x: companies,
                y: sample_values,
                type: "bar",
                orientation: "v",
            }];

            //layout for bar chart
            var bar_layout = { yaxis: { tickmode: "auto" } };

            //plot bar chart
            Plotly.newPlot("bar", bar_data, bar_layout);

            /**
             * For Chrissy
             */
            // var pie_data = [{
            //     values: sample_values,
            //     labels: companies,
            //     type: 'pie'
            // }];

            // var pie_layout = {
            //     height: 600,
            //     width: 600
            // };

            // Plotly.newPlot("my-div", pie_data, pie_layout);
        });
}
//change event function
function selectionChanged(date) {
    plot_employee_by_date(date);
}
//init function
function init() {
    var dropdown = d3.select("#year-select");
    fetch(employee_year_url)
        .then(response => response.json())
        .then(r => {
            r.forEach(x => {
                dropdown.append("option").text(x).property(x);
            });
            plot_employee_by_date(r[0]);
        });
}
init();