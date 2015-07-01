class TimerButtonListener
  def initialize(activity)
    @activity = activity
  end

  def onClick(view)
    @activity.toggleTimer
  end
end