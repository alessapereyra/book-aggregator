class Valobox < BookStore

  def initialize(value)
    @base_url = "https://valobox.com/browse/books"
    @options  = {"search%5Bquery%5D" => value}
    @results  = "li.flexi-column"
    @item     = "a"
  end
end