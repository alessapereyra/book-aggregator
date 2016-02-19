class Gandhi < BookStore
  def initialize(value)
    @base_url  = "http://www.gandhi.com.mx/catalogsearch/result"
    @options   = {"q" => value}
    @results   = ".products-grid li.item"
    @item      = 'h2 a'
  end
end
