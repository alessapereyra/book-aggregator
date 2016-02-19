class KoboBooks < BookStore

  def initialize(value)
    @base_url = "https://store.kobobooks.com/search"
    @options  = {"Query" => value}
    @results  = ".item-wrapper .item-detail"
    @item     = ".item-info p.title a"
  end

end