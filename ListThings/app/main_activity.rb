class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    list = Android::Widget::ListView.new(self)
    list.adapter = adapter
    list.onItemClickListener = self
    self.contentView = list
  end

  def adapter
    Android::Widget::ArrayAdapter.new(self, Android::R::Layout::Simple_list_item_1, Things.all)
  end

  def onItemClick(parent, view, position, id)
    selected_item = Things.all[position]
    intent = Android::Content::Intent.new(self, BaikeActivity)
    intent.putExtra(BaikeActivity::SelectedThing, selected_item)
    startActivity(intent)
  end
end
