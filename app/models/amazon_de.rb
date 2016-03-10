class AmazonDE < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.de/s/ref=nb_sb_noss/280-5316211-4898123"
    @options    = {"__mk_de_DE" => "%C3%85M%C3%85%C5%BD%C3%95%C3%91", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
