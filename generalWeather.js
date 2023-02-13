//html elements
let city = document.querySelector(".city");
let icon = document.querySelector(".icon");
let temp = document.querySelector(".temperature");
let wind = document.querySelector(".wind");
// let sunrise = document.querySelector(".sunrise");
// let sunset = document.querySelector(".sunset");

async function getWeather(api) {
  await fetch(api)
    .then((response) => response.json())
    .then((data) => { 
      // sunrise.textContent = `${new Date(data.sys.sunrise).getDate()}:${new Date(data.sys.sunrise).getUTCMinutes().toLocaleString()}`;
      // sunset.textContent = `${new Date(data.sys.sunset).getUTCHours().toLocaleString()}:${new Date(data.sys.sunset).getUTCMinutes().toLocaleString()}`;
      icon.innerHTML =
        `${data.weather[0].description} <span><img src="https://openweathermap.org/img/w/${data.weather[0].icon}.png" alt="" /></span>`;
      let far = ((data.main.temp - 273.15) * 9) / 5 + 32;
      let cel = data.main.temp - 273.15;
      temp.textContent = `${Math.floor(far)} ℉`;
      //Simple Toggle for temperatures
      let toggle = false;
      function Toggle() {
        if (!toggle) {
          temp.textContent = `${Math.floor(far)} ℉`;
          toggle = true;
        } else {
          temp.textContent = `${Math.floor(cel)} ℃`;
          toggle = false;
        }
      }

      //Fixes the bug so I don't have to double click to switch on the first try, so hover only works once
      temp.addEventListener("mouseover", Toggle, {
        once: true,
      });
      temp.addEventListener("click", Toggle);

      wind.innerHTML = `${data.wind.speed} Knots`;
    })
    .catch(function (error) {
      console.log("Request failed", error);
    });
}