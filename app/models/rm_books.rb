class RMBooks < BookStore

  def initialize(value)
    @base_url  = "https://browse.books.rm.com/Bookshop"
    @options   = {"keyword" => value}
    @results   = ".book_list .row_wrap .box_column h3"
    @item      = 'a'
  end

end