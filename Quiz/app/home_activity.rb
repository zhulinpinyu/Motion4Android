class HomeActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Activity_home)
  end
end
