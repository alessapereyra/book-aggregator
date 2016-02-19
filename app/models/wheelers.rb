class Wheelers < BookStore

  def initialize(value)
    @base_url = "http://www.wheelers.co.nz/browse/search/results/"
    @options  = {query: value}
    @results  = ".productCatalogueList tr"
    @item     = ".data table .titleBlock h3 a"
  end

end