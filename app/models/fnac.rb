class FNAC < BookStore

  def initialize(value)
    @base_url  = "http://busqueda.fnac.es/Search/SearchResult.aspx"
    @options   = {"Search" => value, "Scat" => "2!1"}
    @results   = ".prd-result .oneprd"
    @item      = '.desc .title a'
  end
end