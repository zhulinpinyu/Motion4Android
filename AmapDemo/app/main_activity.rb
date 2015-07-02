class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Basicmap_activity)
    mapView = findViewById(R::Id::Map);
    mapView.onCreate(savedInstanceState);
  end
end
