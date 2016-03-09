class AmazonBR < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.com.br/s/ref=nb_sb_noss"
    @options    = {"__mk_pt_BR" => "%C3%85M%C3%85%C5%BD%C3%95%C3%91", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end
