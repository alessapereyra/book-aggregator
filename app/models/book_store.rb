class BookStore
  include HTTParty

  attr_reader :url

  def html_results
    if @base_url =~ /VALUE/
      Rails.logger.info @base_url
      @base_url = @base_url.gsub("%VALUE%", URI.escape(@options))
      Rails.logger.info @base_url
      @request  = HTTParty.get(@base_url)
    else
      @request  = HTTParty.get(@base_url, {query: @options})

    end

    @url      = @request.request.last_uri.to_s
    Rails.logger.info @url
    @doc ||= Nokogiri::HTML(@request.body)
  end

  def results
    results = html_results.css(@results)
    if results.empty?
      "<a target='_blank' href='#{self.url}'>NONE. But try it</a>"
    elsif results.count == 1
      item = results.first.at_css(@item)
      url = URI.join(@base_url, item.attr("href")).to_s
      name = item.content
      name = @value unless name.present?
      "<a target='_blank' href='" + url + "'> " + name + "</a>"
    else
      item = results.first.at_css(@item)
      if item
        url = URI.join(@base_url, item.attr("href")).to_s
        name = item.content
        name = "Link" if name.blank?
        "<a target='_blank' href='" + url + "'> " + name + "</a>" +  " (of <a href='#{self.url}'>#{results.size} other books</a>)"
      else
        results.to_s
      end
    end
  end

  def render
    results
  end

end