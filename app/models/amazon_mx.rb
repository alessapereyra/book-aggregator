class AmazonMX < BookStore

  def initialize(value)
    @base_url   = "https://www.amazon.com.mx/s/ref=nb_sb_noss_2"
    @options    = {"__mk_es_MX" => "%C3%85M%C3%85%C5%BD%C3%95%C3%91", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end