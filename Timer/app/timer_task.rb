class TimerTask < Java::Util::TimerTask
  def initialize(activity)
    @activity = activity
  end

  def run
    @activity.handler.post -> {@activity.updateTimer}
  end
end