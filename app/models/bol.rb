class Bol < BookStore

  def initialize(value)
    @base_url = "https://www.bol.com/nl/s/algemeen/zoekresultaten/Ntt/%VALUE%/N/0/Nty/1/search/true/searchType/qck/defaultSearchContext/media_all/sc/media_all/index.html"
    @value    = value
    @results  = ".multiselect_results .productlist_block"
    @item     = ".product_details_thumb .product_content .product_line a"
  end

end