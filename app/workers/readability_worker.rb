class ReadabilityWorker
  include Sidekiq::Worker

  def perform(section_id)
    section = Section.find(section_id)
    @contents = section.contents
    
    @contents.each do |content|
      url = content.source_url
      response = Typhoeus.get("https://www.readability.com/api/content/v1/parser?url=#{url}/&token=2e371692e3f7e9fd04045befb46b38364db35326")      
      @results << JSON.parse(response.body)
      # @results[0]["text"] = content.text
    end
  end

end