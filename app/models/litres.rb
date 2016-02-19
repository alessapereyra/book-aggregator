class Litres < BookStore
  def initialize(value)
    @base_url  = "http://www.litres.ru/pages/biblio_search"
    @options   = {"q" => value}
    @results   = ".result-series .row"
    @item      = '.name a'
  end
end
