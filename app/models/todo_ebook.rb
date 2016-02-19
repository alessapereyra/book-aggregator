class TodoEbook < BookStore
  def initialize(value)
    @base_url = "http://todoebook.com/lista.aspx"
    @options  = {autortitulo: value, lang: "es"}
    @results  = ".ContenedorLista .lispub3c"
    @item     = ".lispubtxt3c a.titulolista"
  end

end