class Ebrary < BookStore

  def initialize(value)
    @base_url = "http://site.ebrary.com/lib/alltitles/search.action"
    @options  = {"p00" => value, fromSearch: "fromSearch"}
    @results  = ".book_item"
    @item     = ".book_info_titlelist a"
  end


end