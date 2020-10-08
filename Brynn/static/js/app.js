const employee_year_url = "/employee_demographics/years"
const employee_url = "/employee_demographics"
const employee_company_types_url = "/employee_demographics/types"
const employee_companies_url = "/employee_demographics/companies"

function plot_employee_by_date(selected_date) {
    fetch(employee_year_url + "/" + selected_date)
        .then(response => response.json())
        .then(data => {

            var companies = [];
            var female = [];
            var male = [];
            data.forEach(x => {
                companies.push(x.Company);
                female.push(x.Female);
                male.push(x.Male);
            });

            var trace1 = {
                x: companies,
                y: female,
                type: "bar",
                name: "Female"
            };
            var trace2 = {
                x: companies,
                y: male,
                type: "bar",
                name: "Male"
            };
            var bar_data = [trace1, trace2];

            //layout for bar chart
            var bar_layout = {
                yaxis: { tickmode: "auto" },
                title: { text: "Gender Comparison by Company for " + selected_date.toString() },
                barmode: "group"
            };

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
function plot_employee_by_date_and_type(date, company_type) {
    fetch(employee_company_types_url + "/" + company_type.replace(" ", "%20"))
        .then(response => response.json())
        .then(data => {
            var sample_data = data.filter(s => s.Date.toString() === date.toString());
            var companies = [];
            var innerLabels = [];
            var innerValues = [];
            var outerValues = [];
            sample_data.forEach(x => {
                companies.push(x.Company);
                outerValues.push(Number(x.Female) + Number(x.Male));
                innerValues.push(Number(x.Female));
                innerValues.push(Number(x.Male));
                innerLabels.push(x.Company + " Females");
                innerLabels.push(x.Company + " Males");
            });
            var trace1 = {
                type: "pie",
                hole: 0.5,
                sort: false,
                direction: "clockwise",
                domain: { x: [0.15, 0.85], y: [0.15, 0.85]},
                values: innerValues,
                labels: innerLabels,
                textinfo: "value",
                textposition: "inside",
                showlegend: false
            };
            var trace2 = {
                type: "pie",
                hole: 0.7,
                sort: false,
                direction: "clockwise",
                values: outerValues,
                labels: companies,
                textinfo: "label",
                textposition: "outside"
            };
            var pie_data = [trace1, trace2];
            Plotly.newPlot("pie", pie_data);
        });
}
function plot_employee_by_company(company) {
    fetch(employee_companies_url + "/" + company.replace(" ", "%20"))
        .then(response => response.json())
        .then(data => {
            years = [];
            female = [];
            male = [];
            data.forEach(x => {
                years.push(x.Date);
                female.push(x.Female);
                male.push(x.Male);
            });
            var trace1 = {
                x: years,
                y: female,
                type: "bar",
                name: "Female"
            };
            var trace2 = {
                x: years,
                y: male,
                type: "bar",
                name: "Male"
            };
            var bar_data = [trace1, trace2];
            var bar_layout = {
                yaxis: { tickmode: "auto " },
                title: { text: data[0].Company.toString() },
                barmode: "group"
            };
            Plotly.newPlot("company-bar", bar_data, bar_layout);
        });
}
//year dropdown change event
function yearSelectionChanged(date) {
    plot_employee_by_date(date);
    plot_employee_by_date_and_type(date, $('#company-type-select :selected').val());
    plot_employee_by_company($('#company-select :selected').val());
}
//company category dropdown change event
async function companyTypeSelectionChanged(company_type) {
    plot_employee_by_date_and_type($('#year-select :selected').val(), company_type);
    populateCompanies(company_type)
        .then(selected_company => {
            plot_employee_by_company(selected_company);
        })
}
//company dropdown change event
function companySelectionChanged(company) {
    plot_employee_by_company(company)
}
//populate the companies drop down
async function populateCompanies(company_type) {
    $("#company-select").empty();
    var company_dropdown = d3.select("#company-select");
    let response = await fetch(employee_companies_url);
    let r = await response.json();
    var companies = [];
    r.forEach(x => {
        if (x.Type.toString() === company_type.toString()) {
            companies.push(x.Company);
        }
    });
    companies.forEach(x => {
        company_dropdown.append("option").text(x).property(x);
    });
    return companies[0];
}
//init function
function init() {
    var year_dropdown = d3.select("#year-select");
    var selected_year;
    var type_dropdown = d3.select("#company-type-select");
    var selected_type;
    var company_dropdown = d3.select("#company-select");
    var selected_company;
    fetch(employee_year_url)
        .then(response => response.json())
        .then(r => {
            r.forEach(x => {
                year_dropdown.append("option").text(x).property(x);
            });
            selected_year = r[0];
        })
        .then(() => {
            fetch(employee_company_types_url)
                .then(response => response.json())
                .then(r => {
                    r.forEach(x => {
                        type_dropdown.append("option").text(x).property(x);
                    });
                    selected_type = r[0];
                })
                .then(() => {
                    fetch(employee_companies_url)
                        .then(response => response.json())
                        .then(r => {
                            var companies = [];
                            r.forEach(x => {
                                if (x.Type.toString() === selected_type.toString()) {
                                    companies.push(x.Company);
                                }
                            });
                            companies.forEach(x => {
                                company_dropdown.append("option").text(x).property(x);
                            });
                            selected_company = companies[0];
                        })
                        .then(() => {
                            plot_employee_by_date(selected_year);
                            plot_employee_by_date_and_type(selected_year, selected_type);
                            plot_employee_by_company(selected_company);
                        });
                });
        });
}
init();