class ReadabilityWorker
  include Sidekiq::Worker

  def perform(content_id)
    @content = Content.find(content_id)
    url = @content.source_url
    response = Typhoeus.get("https://www.readability.com/api/content/v1/parser?url=#{url}/&token=2e371692e3f7e9fd04045befb46b38364db35326")      
    result = JSON.parse(response.body)
    @content.update_attributes(res_title: result["title"], res_author: result["author"], res_domain: result["domain"], res_word_count: result["word_count"], res_excerpt: result["excerpt"], res_content: result["content"])
  end

end
