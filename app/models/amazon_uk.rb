class AmazonUK < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.co.uk/s/ref=nb_sb_noss"
    @options    = {"url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
