class PeruBookStore < BookStore
  def initialize(value)
    @base_url = "http://www.perubookstore.com/buscar/keyword/%VALUE%"
    @options    = value
    @results  = ".cbp-rfgrid li"
    @item     = ".text_box h2 a"
  end
end
