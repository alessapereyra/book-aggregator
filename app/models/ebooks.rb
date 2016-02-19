class Ebooks < BookStore

  def initialize(value)
    @base_url = "http://www.ebooks.com/searchapp/searchresults.net"
    @options  = {"term" => value}
    @results  = "#results .search-row"
    @item     = ".descr h4 a"
  end

end