function WeatherGraphs() {
  return `
  <div class="weather-box">
  <h2>Weather Graphs</h2>
  <div class="graphs">
    <div class="graph-container">
      <div class="graph-title">
        Radar
      </div>
      <img src="https://nms.gov.bz/images/radar/250/latest_250kmloop.gif" alt="Belize Live Weather Radar" />
    </div>
    <div class="graph-container">
      <div class="graph-title">
        Satallite
      </div>
      <img src="https://nms.gov.bz/images/radar/250/latest_PAC_250kmpic.gif" alt="Belize Live Weather Satallite" />
    </div>
    <div class="graph-container">
      <div class="graph-title">
        Weather Stations
      </div>
      <img
        src="https://www.researchgate.net/profile/Jonathan-Lashley/publication/295078178/figure/fig2/AS:330834843324422@1455888581393/Location-of-Weather-Stations-in-Belize.png"
        alt="Belize Live Weather Stations" />
    </div>
  </div>
</div>
  `;
}

export default WeatherGraphs;
