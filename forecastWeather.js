//html elements
let th = document.querySelectorAll("table tr .day");
let dayTemps = document.querySelectorAll("table .tableInfo .dayTemps");
let nightTemps = document.querySelectorAll("table .tableInfo .nightTemps");
let feelsLike = document.querySelectorAll("table .tableInfo .feelsLike");
let sunrise = document.querySelector(".sunrise");
let sunset = document.querySelector(".sunset");
let moonrise = document.querySelector(".moonrise");
let moonset = document.querySelector(".moonset");
let tideDetails = document.querySelector('.tide-details'); 

const ctx = document.getElementById('myChart');

let dailyWeatherTemps = [];
let weatherDates = []; 
const getOrCreateTooltip = (chart) => {
  let tooltipEl = chart.canvas.parentNode.querySelector('div');

  if (!tooltipEl) {
    tooltipEl = document.createElement('div');
    tooltipEl.style.background = 'rgba(0, 0, 0, 0.7)';
    tooltipEl.style.borderRadius = '3px';
    tooltipEl.style.color = 'white';
    tooltipEl.style.opacity = 1;
    tooltipEl.style.pointerEvents = 'none';
    tooltipEl.style.position = 'absolute';
    tooltipEl.style.transform = 'translate(-50%, 0)';
    tooltipEl.style.transition = 'all .1s ease';

    const table = document.createElement('table');
    table.style.margin = '0px';

    tooltipEl.appendChild(table);
    chart.canvas.parentNode.appendChild(tooltipEl);
  }
  return tooltipEl;
};

const externalTooltipHandler = (context) => { 
  // Tooltip Element
  const {chart, tooltip } = context; 
  const { dataPoints } = tooltip; 
  const tooltipEl = getOrCreateTooltip(chart);

  // Hide if no tooltip
  if (tooltip.opacity === 0) {
    tooltipEl.style.opacity = 0;
    return;
  }

  // Set Text
  if (tooltip.body) {
    const titleLines = tooltip.title || [];
    const bodyLines = dailyWeatherTemps.map(temps => temps);
    const tableHead = document.createElement('thead');

    titleLines.forEach(title => {
      const tr = document.createElement('tr');
      tr.style.borderWidth = 0;

      const th = document.createElement('th');
      th.style.borderWidth = 0;
      const text = document.createTextNode(title);

      th.appendChild(text);
      tr.appendChild(th);
      tableHead.appendChild(tr);
    });

    const tableBody = document.createElement('tbody');
    bodyLines.forEach((body, i) => { 
     if(i === dataPoints[0].dataIndex) { 
      tableBody.innerHTML = `
        <p>Day:  ${body.day}</p>
        <p>Min-Max:   ${body.minMax}</p>
        <p>Night:  ${body.night}</p>
        <p>Apparent: ${body.feelsLike}</p>
      `;
     }
    });

    const tableRoot = tooltipEl.querySelector('table');

    // Remove old children
    while (tableRoot.firstChild) {
      tableRoot.firstChild.remove();
    }

    // Add new children
    tableRoot.appendChild(tableHead);
    tableRoot.appendChild(tableBody);
  }

  const {offsetLeft: positionX, offsetTop: positionY} = chart.canvas;

  // Display, position, and set styles for font 
  tooltipEl.style.opacity = 1;
  tooltipEl.style.left = positionX + tooltip.caretX + 'px';
  tooltipEl.style.top = positionY + tooltip.caretY + 'px';
  tooltipEl.style.font = tooltip.options.bodyFont.string;
  tooltipEl.style.padding = tooltip.options.padding + 'px ' + tooltip.options.padding + 'px';
};

const dailyWeatherChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [],
    datasets: [{
      label: 'Avg Temp',
      data: [],
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
        position: 'nearest',
        external: externalTooltipHandler
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

async function getForcast(forecast) {
  try {
    const response = await fetch(forecast);
    const data = await response.json();  
    const { weekly, marine } = data; 
    weatherDates = await weekly.daily.map(dailyTemp => {
      let date = new Date(dailyTemp.dt*1000).toISOString().slice(0, 10);
      return date;
    });  
    dailyWeatherTemps = await weekly.daily.map(dailyTemp => {
      const weatherTemps = {
        day: (dailyTemp.temp.day - 273.15).toFixed(1),
        minMax: `${(dailyTemp.temp.min - 273.15).toFixed(1)} - ${(dailyTemp.temp.max - 273.15).toFixed(1)}`,
        night: (dailyTemp.temp.night - 273.15).toFixed(1),
        feelsLike: (dailyTemp.feels_like.day - 273.15).toFixed(1),
      }
      return weatherTemps;
    }); 
    
    dailyWeatherChart.data.datasets[0].data = dailyWeatherTemps.map(temp => temp.day); 
    dailyWeatherChart.data.labels = weatherDates;
    dailyWeatherChart.update();
    //general data
    moonrise.textContent = `${marine.forecast_data[0].moon_details[0].moon_display}`;
    moonset.textContent = `${marine.forecast_data[0].moon_details[1].moon_display}`;

    sunrise.textContent = `${marine.forecast_data[0].sun_details[0].sun_display}`;
    sunset.textContent = `${marine.forecast_data[0].sun_details[1].sun_display}`;
    
    const tideData = marine.forecast_data[0].tide_details;

    tideData.forEach(tide => { 
      tideDetails.insertAdjacentHTML("beforeend", `
      <p>
      ${tide.tide_date_type}: <span>${tide.tide_display}</span>
      </p>`);
    })

    //weekly/days
    const days = weekly.daily.map(day => {
      let dayLong = new Date(day.dt * 1000).toLocaleString('en-us', { weekday: 'long' });
      let dayShorted = dayLong.substr(0, 3);
      return {
        dayShorted: dayShorted,
        maxTemp: day.temp.max,
        minTemp: day.temp.min,
        nightTemp: day.temp.night,
        feelsLike: day.feels_like.day
      };
    })
    th.forEach((header, index) => {
      header.textContent = days[index].dayShorted;
    });
    dayTemps.forEach((row, index) => {
      row.textContent = `${(days[index].minTemp - 273.15).toFixed(1)} - ${(days[index].maxTemp - 273.15).toFixed(1)}`;
    });

    nightTemps.forEach((row, index) => {
      row.textContent = `${(days[index].nightTemp - 273.15).toFixed(1)}`;
    });

    feelsLike.forEach((row, index) => {
      row.textContent = `${(days[index].feelsLike - 273.15).toFixed(1)}`;
    })
  } catch (error) {
    console.log(error);
  }
}
