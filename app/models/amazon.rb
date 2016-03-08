class Amazon < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.com/s/ref=nb_sb_noss?"
    @options    = { "url" => "search-alias%3Ddigital-text",
                    "field-keywords" => value }
    @results    = ".s-result-item.celwidget"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
