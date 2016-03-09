class AmazonIT < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.it/s/ref=nb_sb_noss"
    @options    = {"__mk_it_IT" => "ÅMÅŽÕÑ", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
