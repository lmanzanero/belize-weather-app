let sunrise = document.querySelector(".sunrise");
let sunset = document.querySelector(".sunset");
let moonrise = document.querySelector(".moonrise");
let moonset = document.querySelector(".moonset");
let tideDetails = document.querySelector(".tide-details");
let audioPlayer = document.querySelector("#audio");
const ctx = document.getElementById("myChart");

let dailyWeatherTemps = [];
let weatherDates = [];
const getOrCreateTooltip = (chart) => {
  let tooltipEl = chart.canvas.parentNode.querySelector("div");

  if (!tooltipEl) {
    tooltipEl = document.createElement("div");
    tooltipEl.style.background = "rgba(0, 0, 0, 0.7)";
    tooltipEl.style.borderRadius = "3px";
    tooltipEl.style.color = "white";
    tooltipEl.style.opacity = 1;
    tooltipEl.style.pointerEvents = "none";
    tooltipEl.style.position = "absolute";
    tooltipEl.style.transform = "translate(-50%, 0)";
    tooltipEl.style.transition = "all .1s ease";

    const table = document.createElement("table");
    table.style.margin = "0px";

    tooltipEl.appendChild(table);
    chart.canvas.parentNode.appendChild(tooltipEl);
  }
  return tooltipEl;
};

const externalTooltipHandler = (context) => {
  // Tooltip Element
  const { chart, tooltip } = context;
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
    const bodyLines = dailyWeatherTemps.map((temps) => temps);
    const tableHead = document.createElement("thead");

    titleLines.forEach((title) => {
      const tr = document.createElement("tr");
      tr.style.borderWidth = 0;

      const th = document.createElement("th");
      th.style.borderWidth = 0;
      const text = document.createTextNode(title);

      th.appendChild(text);
      tr.appendChild(th);
      tableHead.appendChild(tr);
    });

    const tableBody = document.createElement("tbody");
    bodyLines.forEach((body, i) => {
      if (i === dataPoints[0].dataIndex) {
        tableBody.innerHTML = `
        <div class="chart-tip">
          <p>Day:  ${body.day} ☀️</p>
          <p>Min-Max: 🥶 ${body.minMax} 🥵</p>
          <p>Night:  ${body.night}  🌃</p>
          <p>Apparent: ${body.feelsLike} 🌡 </p>
        </div>
      `;
      }
    });

    const tableRoot = tooltipEl.querySelector("table");

    // Remove old children
    while (tableRoot.firstChild) {
      tableRoot.firstChild.remove();
    }

    // Add new children
    tableRoot.appendChild(tableHead);
    tableRoot.appendChild(tableBody);
  }

  const { offsetLeft: positionX, offsetTop: positionY } = chart.canvas;

  // Display, position, and set styles for font
  tooltipEl.style.opacity = 1;
  tooltipEl.style.left = positionX + tooltip.caretX + "px";
  tooltipEl.style.top = positionY + tooltip.caretY + "px";
  tooltipEl.style.font = tooltip.options.bodyFont.string;
  tooltipEl.style.padding =
    tooltip.options.padding + "px " + tooltip.options.padding + "px";
};

const dailyWeatherChart = new Chart(ctx, {
  type: "line",
  data: {
    labels: [],
    datasets: [
      {
        label: "Avg Temp",
        data: [],
        borderWidth: 6,
        fill: true,
        tension: 0.4,
        borderColor: "#20827a",
        backgroundColor: "transparent",
        hoverOffset: 4,
      },
    ],
  },
  options: {
    responsive: true,
    maintainAspectRatio: false,
    interaction: {
      mode: "index",
      intersect: false,
    },
    plugins: {
      title: {
        display: true,
        text: "Belize Weather: 7 Day Forecast",
      },
      tooltip: {
        enabled: false,
        position: "nearest",
        external: externalTooltipHandler,
      },
    },
    scales: {
      y: {
        min: 15,
        suggestedMax: 30,
        beginAtZero: true,
        title: {
          display: true,
          text: "Temp",
        },
      },
      x: {
        type: "time",
        time: {
          unit: "day",
          tooltipFormat: "MMM dd",
        },
        title: {
          display: true,
          text: "Days",
        },
      },
    },
  },
});

function calculateDailyAverageTemperature(data) {
  const dailyAverages = {};

  data.forEach((item) => {
    const date = new Date(item.dt * 1000).toISOString().slice(0, 10); // Get date in "YYYY-MM-DD" format
    if (!dailyAverages[date]) {
      dailyAverages[date] = { sum: 0, count: 0 };
    }
    dailyAverages[date].sum += item.main.temp;
    dailyAverages[date].count++;
  });

  for (const date in dailyAverages) {
    dailyAverages[date] = dailyAverages[date].sum / dailyAverages[date].count;
  }

  return dailyAverages;
}

async function getForcast(forecast) {
  try {
    const response = await fetch(forecast);
    const data = await response.json();
    console.log(data);
    const { daily, general, weekly, marine } = data;
    //general data
    moonrise.textContent = `${marine.forecast_data[0].moon_details[0].moon_display}`;
    moonset.textContent = `${marine.forecast_data[0].moon_details[1].moon_display}`;

    sunrise.textContent = `${marine.forecast_data[0].sun_details[0].sun_display}`;
    sunset.textContent = `${marine.forecast_data[0].sun_details[1].sun_display}`;

    audio.src = `https:${general.forecast_data[0].audio}`;

    const tideData = marine.forecast_data[0].tide_details;

    // Tomorrow
    const tomorrowCoastalHigh = document.querySelector(
      ".tomorrow .forecast-details .detail.coastal-high",
    );
    const tomorrowCoastalLow = document.querySelector(
      ".tomorrow .forecast-details .detail.coastal-low",
    );
    const tomorrowInlandLow = document.querySelector(
      ".tomorrow .forecast-details .detail.inland-low",
    );
    const tomorrowInlandHigh = document.querySelector(
      ".tomorrow .forecast-details .detail.inland-high",
    );
    const tomorrowWindSpeed = document.querySelector(
      ".tomorrow .forecast-details .detail.wind-speed",
    );
    const tonightCoastalHigh = document.querySelector(
      ".tonight .forecast-details .detail.coastal-high",
    );
    const tonightCoastalLow = document.querySelector(
      ".tonight .forecast-details .detail.coastal-low",
    );
    const tonightInlandLow = document.querySelector(
      ".tonight .forecast-details .detail.inland-low",
    );
    const tonightInlandHigh = document.querySelector(
      ".tonight .forecast-details .detail.inland-high",
    );

    const tonightWindSpeed = document.querySelector(
      ".tonight .forecast-details .detail.wind-speed",
    );

    tonightCoastalHigh.innerHTML = `  <span> Coastal High </br> ${daily.forecast_data[0].coast_high}</span>`;
    tonightCoastalLow.innerHTML = `  <span> Coastal High </br> ${daily.forecast_data[0].coast_high}</span>`;
    tonightInlandHigh.innerHTML = `  <span> Inland High </br> ${daily.forecast_data[0].inland_high}</span>`;
    tonightInlandLow.innerHTML = `  <span> Inland Low </br> ${daily.forecast_data[0].inland_low}</span>`;
    tonightWindSpeed.innerHTML = ` <span>Wind Speed </br> ${daily.forecast_data[0].wind_speed}</span>`;

    tomorrowCoastalHigh.innerHTML = `  <span> Coastal High </br> ${daily.forecast_data[1].coast_high}</span>`;
    tomorrowCoastalLow.innerHTML = `  <span> Coastal Low </br> ${daily.forecast_data[1].coast_high}</span>`;
    tomorrowInlandHigh.innerHTML = `  <span> Inland High </br> ${daily.forecast_data[1].inland_high}</span>`;
    tomorrowInlandLow.innerHTML = `  <span> Inland Low </br> ${daily.forecast_data[1].inland_low}</span>`;
    tomorrowWindSpeed.innerHTML = ` <span>Wind Speed </br> ${daily.forecast_data[1].wind_speed}</span>`;

    tideData.forEach((tide) => {
      tideDetails.insertAdjacentHTML(
        "beforeend",
        `
      <p>
      ${tide.tide_date_type}  : <b>${tide.tide_type}</b> at ${tide.tide_display}
      </p>`,
      );
    });
    weatherDates = await weekly.list.map((dailyTemp) => {
      let date = new Date(dailyTemp.dt * 1000).toISOString().slice(0, 10);
      return date;
    });
    dailyWeatherTemps = await weekly.list.map((dailyTemp) => {
      const weatherTemps = {
        day: (dailyTemp.main.temp - 273.15).toFixed(1),
        minMax: `${(dailyTemp.main.temp_max - 273.15).toFixed(1)} - ${(dailyTemp.main.temp_max - 273.15).toFixed(1)}`,
        night: (dailyTemp.main.temp_min - 273.15).toFixed(1),
        feelsLike: (dailyTemp.main.feels_like - 273.15).toFixed(1),
      };
      return weatherTemps;
    });

    const dailyAverages = calculateDailyAverageTemperature(weekly.list);

    const dailyAverageTemps = Object.values(dailyAverages).map((day) =>
      Number((day - 273.15).toFixed(1)),
    );

    const days = Object.keys(dailyAverages).map((day) => day);

    console.log(days, dailyAverageTemps);

    dailyWeatherChart.data.datasets[0].data = dailyAverageTemps;

    dailyWeatherChart.data.labels = days;
    dailyWeatherChart.update();
  } catch (error) {
    console.log(error);
  }
}
