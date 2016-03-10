class AmazonCA < BookStore

  def initialize(value)
    @base_url   = "https://www.amazon.ca/s/ref=nb_sb_noss"
    @options    = {"url" => "search-alias%3Daps", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
