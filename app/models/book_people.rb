class BookPeople < BookStore

  def initialize(value)
    @base_url = "http://www.thebookpeople.co.uk/webapp/wcs/stores/servlet/qs_searchResult_tbp"
    @options  = {"searchTerm" => value}
    @results  = ".dis-table-row-group .dis-table-row"
    @item     = ".productBox .productTitles a"
  end
end