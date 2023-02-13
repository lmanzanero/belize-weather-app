//html elements
let th = document.querySelectorAll("table tr .day");
let dayTemps = document.querySelectorAll("table .tableInfo .dayTemps");
let nightTemps = document.querySelectorAll("table .tableInfo .nightTemps");
let feelsLike = document.querySelectorAll("table .tableInfo .feelsLike");

async function getForcast(forecast) {
  try {
    const response = await fetch(forecast);
    const data = await response.json(); 
    const { weekly } = data;
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
