function getGeoPicture(lat, long) {
  const apiUrl = `api/v1/geopicture?lat=${lat}&long${long}`
  fetch(apiUrl, {
    method: "GET",
  })
    .then((response) => response.json())
    .then(function (data) {
      const photoReference = data.results[0].photos[0].photo_reference;
      let locationPicture = `https://maps.googleapis.com/maps/api/place/photo?maxwidth=700&photoreference=${photoReference}&key=${process.env.GOOGLE_API_KEY}`;
      document.querySelector(
        ".weather-box"
      ).style.backgroundImage = `url(${locationPicture})`;
    })
    .catch(function (error) {
      console.log("Request failed", error);
    });
}
