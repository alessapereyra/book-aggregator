class AmazonJP < BookStore

  def initialize(value)
    @base_url   = "http://www.amazon.co.jp/s/ref=nb_sb_noss/376-7973291-4174459"
    @options    = {"__mk_ja_JP" => "%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A", "url" =>"search-alias%3Daps", "field-keywords" => value }
    @results    = ".s-item-container"
    @item       = '.a-link-normal.s-access-detail-page.a-text-normal'
  end

end