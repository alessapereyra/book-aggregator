class TheCopia < BookStore

  def initialize(value)
    @base_url = "https://www.thecopia.com/catalog/search.html"
    @options = {key: value}
    @results = ".catalogList .collapsedList"
    @item    = ".listDetail h3 a"
  end

end