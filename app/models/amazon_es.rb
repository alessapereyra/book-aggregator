class AmazonES < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.es/s/ref=nb_sb_noss_2"
    @options    = {"__mk_es_ES" => "%C3%85M%C3%85%C5%BD%C3%95%C3%9", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end