class MainActivity < Android::App::Activity
  attr_reader :handler

  def onCreate(savedInstanceState)
    super

    @handler = Android::Os::Handler.new
    layout = Android::Widget::LinearLayout.new(self)
    layout.orientation = Android::Widget::LinearLayout::VERTICAL

    @label = Android::Widget::TextView.new(self)
    @label.text = "Tap to Start"
    @label.textSize = 60.0
    @label.gravity = Android::View::Gravity::CENTER_HORIZONTAL
    layout.addView(@label)

    @button = Android::Widget::Button.new(self)
    @button.text = 'Start'
    listener = TimerButtonListener.new(self)
    @button.onClickListener = listener
    layout.addView(@button)

    self.contentView = layout
  end

  def toggleTimer
    if @timer
      @timer.cancel
      @timer = nil
      @button.text = 'Start'
    else
      @timer = Java::Util::Timer.new
      @counter = 0
      task = TimerTask.new(self)
      @timer.schedule task, 0, 100
      @button.text = 'Stop'
    end
  end

  def updateTimer
    @label.text = "%.1f" % (@counter += 0.1)
  end
end
