class Weather
  attr_reader :data, :type, :temperature, :wind

  def initialize(json)
    @data = json.getJSONObject("data")
    @type = latest_data.getString("type")
    @temperature = "#{latest_data.getString("low")},#{latest_data.getString("high")}"
    @wind = latest_data.getString("fengli")
  end

  private
    def latest_data
      @latest_data ||= data.getJSONArray("forecast").getJSONObject(0)
    end
end