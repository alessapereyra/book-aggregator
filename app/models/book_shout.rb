class BookShout < BookStore

  def initialize(value)
    @base_url = "http://bookshout.com/search"
    @options  = {query: value}
    @results  = ".row.search-result.book-item"
    @item     = "a"
  end

end