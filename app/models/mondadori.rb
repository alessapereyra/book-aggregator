class Mondadori < BookStore

  def initialize(value)
    @base_url = "http://www.mondadoristore.it/search"
    @options = {g: value}
    @results = ".content-box .single-box"
    @item    = ".product-info .title a.link"
  end

end


