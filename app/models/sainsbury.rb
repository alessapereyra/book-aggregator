class Sainsbury < BookStore

  def initialize(value)
    @base_url   = "http://www.sainsburysentertainment.co.uk/ebooks#/search/"
    @options    = value
    @results    = ".search-product"
    @item       = '.search-title'
  end

end
