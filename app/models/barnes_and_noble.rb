class BarnesAndNoble < BookStore

  def initialize(value)
    @base_url = "http://www.barnesandnoble.com/s/%VALUE%"
    @options  = value
    @results  = "#gridView .product-info"
    @item     = "h2 a"
  end

end