async function getAreasWeather (api) {
  const res = await fetch(api);
  const data = await res.json(); 
  return await data.forecast_data;
}