class Livria < BookStore
  def initialize(value)
    @base_url  = "http://www.livrariacultura.com.br/busca"
    @options   = {"Ntt" => value}
    @results   = ".products .product"
    @item      = '.small-slider-content h2 a'
  end
end