class Weather
  attr_reader :data, :temperature, :wind

  def initialize(json)
    @data = json.getJSONObject("observations")
    @temperature =latest_data.getString("air_temp")
    @wind = latest_data.getString("wind_spd_kmh")
  end

  private
    def latest_data
      @latest_data ||= data.getJSONArray("data").getJSONObject(0)
    end
end