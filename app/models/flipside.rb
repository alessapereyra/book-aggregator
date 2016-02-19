class Flipside < BookStore

  def initialize(value)
    @base_url  = "http://flipside.ph/component/search/"
    @options   = {"searchword" => value}
    @results   = ".search-results dt.result-title"
    @item      = 'a'
  end
end