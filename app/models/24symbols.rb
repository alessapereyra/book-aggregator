class Symbols < BookStore

  def initialize(value)
    @base_url   = "https://www.24symbols.com/editions/search"
    @options    = { "utf8" => "%E2%9C%93&sb-suggestion=", "search" => value }
    @results    = ".book.uppercase.masonry-brick"
    @item       = '.cover a'
  end

end