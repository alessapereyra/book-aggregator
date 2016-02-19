class Grammata < BookStore
  def initialize(value)
    @base_url = "http://grammata.es/buscar"
    @options  = {"search_query" => value}
    @results  = ".ajax_block_product"
    @item     = "h3 a"
  end

end