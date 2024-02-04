function WeatherChart (weatherDates, temps) {
  return   ` 
        const ctx = document.getElementById('myChart');
        const dailyWeatherChart = new Chart(ctx, {
          type: 'line',
          data: {
            labels:[ ${weatherDates}],
            datasets: [{
              label: 'Avg Temp',
              data:[ ${temps}],
              borderWidth: 6,
              fill: true,
              tension: 0.4,
              borderColor: '#20827a',
              backgroundColor: 'transparent',
              hoverOffset: 4
            } 
          ]
          },
          options: {  
            responsive: true,
            maintainAspectRatio: false,
            interaction: {
              mode: 'index',
              intersect: false,
            },
            plugins: {
              title: {
                display: true,
                text: 'Belize Weather: 7 Day Forecast'
              },
              tooltip: {
                enabled: false,
                position: 'nearest'
              }
            },
            scales: {
              y: {
                min: 20, 
                suggestedMax: 35,
                beginAtZero: true,
                title: {
                  display: true,
                  text: 'Temp'
                }
              },
              x: {
                type: 'time',
                time: {
                  unit: 'day',
                  tooltipFormat: 'MMM dd'
                },
                title: {
                  display: true,
                  text: 'Days'
                }
              }
            }
          }
        });  
  `
}

module.exports = WeatherChart;