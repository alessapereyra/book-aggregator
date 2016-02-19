class Saraiva < BookStore
  def initialize(value)
    @base_url  = "http://busca.saraiva.com.br"
    @options = {q: value, f: '{"rootCategory":["Livros"]}'}
    @results = ".cs-results .cs-product-container"
    @item    = '.cs-list-container h2.cs-product-title a'
  end
end