class Feedbooks < BookStore
  def initialize(value)
    @base_url = "http://es.feedbooks.com/search"
    @options  = {"query" => value}
    @results  = ".prepend-top div[itemtype='http://schema.org/Book']"
    @item     = "h3 a"
  end
end