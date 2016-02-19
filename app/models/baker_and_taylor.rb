class BakerAndTaylor < BookStore

  def initialize(value)
    @base_url = "http://www.baker-taylor.com/gs-searchresults.cfm"
    @options  = {"search" => value}
    @results  = ".gsc-table-result .gsc-webResult"
    @item     = "table .gs-title a"
  end

end