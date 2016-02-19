class CasaDelLibro < BookStore

  def initialize(value)
    @base_url  = "http://www.casadellibro.com/busqueda-generica"
    @options = {"busqueda" => value}
    @results = ".mod-list-bigpic .mod-list-item"
    @item    = 'a.title-link'
  end
end