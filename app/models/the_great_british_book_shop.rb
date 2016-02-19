class TheGreatBritishBookShop < BookStore

  def initialize(value)
    @base_url = "https://www.thegreatbritishbookshop.co.uk/search-results"
    @options  = {search_terms: value}
    @results  = ".product-list-wrap .product-snippet"
    @item     = ".details h2 a"
  end

end