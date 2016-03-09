class Txtr < BookStore

  def initialize(value)
    @base_url   = "https://txtr.com/catalog/search/"
    @options    = {"query" => value }
    @results    = ".tx-list-item"
    @item       = 'h5 a'
  end

end
