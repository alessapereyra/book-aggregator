class ElCorteIngles < BookStore

  def initialize(value)
    @base_url  = "https://www.elcorteingles.es/libros/search"
    @options = {"s" => value, "level" => "6"}
    @results = ".product-list li.product"
    @item    = '.info .product-name h3 a'
  end
end