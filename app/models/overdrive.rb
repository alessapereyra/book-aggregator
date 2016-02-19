class Overdrive < BookStore

  def initialize(value)
    @base_url = "https://www.overdrive.com/search"
    @options = {q: value}
    @results = ".results .title-result-row"
    @item    = ".title-result-row__title a"
  end

end