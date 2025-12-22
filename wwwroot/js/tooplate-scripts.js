const width_threshold = 480;

function drawLineChart() {
  if ($("#lineChart").length) {
    const ctxLine = document.getElementById("lineChart").getContext("2d");

    const optionsLine = {
      scales: {
        yAxes: [{
          ticks: { beginAtZero: true },
          scaleLabel: {
            display: true,
            labelString: "Revenue (USD)"
          }
        }],
        xAxes: [{
          scaleLabel: {
            display: true,
            labelString: "Month"
          }
        }]
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem) {
            return `Online Revenue: ${tooltipItem.yLabel} USD`;
          }
        }
      },
      maintainAspectRatio: $(window).width() < width_threshold ? false : true
    };

    const configLine = {
      type: "line",
      data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
        datasets: [{
          label: "Online Revenue",
          data: [52, 60, 58, 66, 72, 78, 85],
          fill: false,
          borderColor: "rgb(75, 192, 192)",
          cubicInterpolationMode: "monotone",
          pointRadius: 0
        }]
      },
      options: optionsLine
    };

    new Chart(ctxLine, configLine);
  }
}



function drawBarChart() {
  if ($("#barChart").length) {
    ctxBar = document.getElementById("barChart").getContext("2d");

    optionsBar = {
      responsive: true,
      scales: {
        xAxes: [
          {
            ticks: { beginAtZero: true },
            scaleLabel: {
              display: true,
              labelString: "Units Sold"
            }
          }
        ],
        yAxes: [
          {
            barPercentage: 0.35
          }
        ]
      }
    };

    optionsBar.maintainAspectRatio =
      $(window).width() < width_threshold ? false : true;

    configBar = {
      type: "horizontalBar",
      data: {
        labels: [
          "Lipstick (Matte)",
          "Sunscreen SPF50",
          "Moisturizer",
          "Perfume 50ml",
          "Cleanser",
          "Serum Vitamin C",
          "Mascara"
        ],
        datasets: [
          {
            label: "Units Sold",
            data: [120, 98, 88, 76, 70, 64, 59],
            backgroundColor: [
              "#F7604D",
              "#4ED6B8",
              "#A8D582",
              "#D7D768",
              "#9D66CC",
              "#DB9C3F",
              "#3889FC"
            ],
            borderWidth: 0
          }
        ]
      },
      options: optionsBar
    };

    barChart = new Chart(ctxBar, configBar);
  }
}

function drawPieChart() {
  if ($("#pieChart").length) {
    var chartHeight = 300;
    $("#pieChartContainer").css("height", chartHeight + "px");

    ctxPie = document.getElementById("pieChart").getContext("2d");

    optionsPie = {
      responsive: true,
      maintainAspectRatio: false,
      layout: {
        padding: { left: 10, right: 10, top: 10, bottom: 10 }
      },
      legend: { position: "top" }
    };

    const inStock = 240;
    const lowStock = 35;
    const outStock = 12;

    configPie = {
      type: "pie",
      data: {
        datasets: [
          {
            data: [inStock, lowStock, outStock],
            backgroundColor: ["#4ED6B8", "#D7D768", "#F7604D"],
            label: "Inventory"
          }
        ],
        labels: [
          `In Stock (${inStock})`,
          `Low Stock (${lowStock})`,
          `Out of Stock (${outStock})`
        ]
      },
      options: optionsPie
    };

    pieChart = new Chart(ctxPie, configPie);
  }
}
