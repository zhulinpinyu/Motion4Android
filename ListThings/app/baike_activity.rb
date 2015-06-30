class BaikeActivity < Android::App::Activity
  SelectedThing = 'com.company.things.selected_thing'

  def onCreate(savedInstanceState)
    super

    thing = self.intent.getStringExtra(SelectedThing)
    url = "http://www.baike.com/wiki/#{thing}"

    webview = Android::Webkit::WebView.new(self)
    webview.webViewClient = Android::Webkit::WebViewClient.new
    webview.loadUrl(url)
    self.contentView = webview
  end
end