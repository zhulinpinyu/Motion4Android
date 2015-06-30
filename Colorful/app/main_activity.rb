class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    @text = Android::Widget::TextView.new(self)
    @text.text = "Hi RubyMotion for Android"
    @text.textColor = Android::Graphics::Color::GREEN
    @text.textSize = 36.0
    self.contentView = @text
  end
end
