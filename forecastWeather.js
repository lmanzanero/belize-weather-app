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

async function getForcast(forecast) {
  try {
    const response = await fetch(forecast);
    const data = await response.json(); 
    console.log(data);
    const { weekly, marine } = data;
    //general data
    moonrise.textContent = `${marine.forecast_data[0].moon_details[0].moon_display}`;
    moonset.textContent = `${marine.forecast_data[0].moon_details[1].moon_display}`;

    sunrise.textContent = `${marine.forecast_data[0].sun_details[0].sun_display}`;
    sunset.textContent = `${marine.forecast_data[0].sun_details[1].sun_display}`;
    console.log(marine.forecast_data[0].tide_details)
    
    const tideData = marine.forecast_data[0].tide_details;

    tideData.forEach(tide => {
      console.log(tide)
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
