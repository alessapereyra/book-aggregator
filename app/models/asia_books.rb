class AsiaBooks < BookStore
  def initialize(value)
    @base_url  = "http://www.asiabooks.com/search"
    @options   = {"q" => value}
    @results   = ".products-grid li.item"
    @item      = '.item-content h2.product-name a'
  end
end