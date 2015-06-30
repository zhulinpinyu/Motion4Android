class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    @text = Android::Widget::TextView.new(self)
    @text.text = "🍎 🍏 🍐 🍑 🍒 🍓 Hi RubyMotion 🍎 🍏 🍐 🍑 🍒 🍓"
    @text.textColor = Android::Graphics::Color::GREEN
    @text.textSize = 36.0
    self.contentView = @text
  end

  def dispatchTouchEvent(event)
    @counter ||= 0
    case event.action
    when Android::View::MotionEvent::ACTION_UP
      @counter += 1
      @text.text = " 💕 💞 💓 💗 💖 💘 💝 🍎 你按了#{@counter}次,👍"
    when Android::View::MotionEvent::ACTION_MOVE
      @text.text = "🍅 🍆 🌽 🍠 🍇 🍈 🍉 🍊 🍋 🍌 🍍 🍎 🍏 🍐 🍑 🍒 🍓 🍔 🍕 🍖 🍗 🍘 🍙 🍚 🍛 🍜 🍝 🍞 🍟 🍡 🍢 🍣 🍤 🍥 🍦 🍧 🍨 🍩 🍪 🍫 🍬 🍭 🍮 🍯 🍰 🍱 🍲 🍳 🍴 🍵 ☕️ 🍶 🍷 🍸 🍹 🍺 🍻 🍼"
      @text.backgroundColor = Android::Graphics::Color.rgb(rand(255),rand(255),rand(255))
    end
    true
  end
end
