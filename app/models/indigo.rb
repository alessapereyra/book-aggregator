class Indigo < BookStore

 def initialize(value)
   @base_url  = "http://www.chapters.indigo.ca/en-ca/home/search/"
   @options   = {"keywords" => value}
   @results   = ".SearchResultsContainer .product"
   @item      = ".productDetails .search__productbody h4 a"
 end
end