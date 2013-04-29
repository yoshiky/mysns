class YoutubeUtil
  include ActiveResource::Formats::JsonFormat

  def decode(json)
    super(json.gsub("$", "_"))
  end

end
