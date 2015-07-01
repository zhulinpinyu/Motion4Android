class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    layout = Android::Widget::LinearLayout.new(self)
    layout.orientation = Android::Widget::LinearLayout::VERTICAL
    layout.backgroundColor = Android::Graphics::Color.parseColor("#FF0099CC")

    @temperature = text_label
    @wind = text_label

    layout.addView(@temperature)
    layout.addView(@wind)

    fetch_weather

    self.contentView = layout
  end

  def fetch_weather
    url = "http://www.bom.gov.au/fwo/IDN60901/IDN60901.94768.json"
    listenter = RequestListener.new(self)
    # 0 代表的是GET请求
    req = Com::Android::Volley::Toolbox::JsonObjectRequest.new(0, url, nil, listenter, nil)
    request_queue.add(req)
  end

  def request_queue
    @request_queue ||= Com::Android::Volley::Toolbox::Volley.newRequestQueue(self)
  end

  def text_label
    text = Android::Widget::TextView.new(self)
    text.textColor = Android::Graphics::Color::WHITE
    text.gravity = Android::View::Gravity::CENTER_HORIZONTAL
    text.textSize = 36.0
    text
  end

  def update_display(weather)
    @temperature.text = "温度: #{weather.temperature}摄氏度"
    @wind.text = "风向: #{weather.wind}"
  end
end
