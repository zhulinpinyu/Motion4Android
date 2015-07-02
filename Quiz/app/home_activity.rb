class HomeActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Activity_home)

    @go_button = findViewById(R::Id::Go_button)
    @go_button.onClickListener = self
  end

  def onClick(view)
    intent = Android::Content::Intent.new(self, FormActivity)
    startActivity(intent)
  end
end
