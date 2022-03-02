require 'net/http'

module JekyllFetch
  class JsonFetchTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
	if /(.+) (.+)/.match(@text)
    		base_url = context[$2]
    		resp = Net::HTTP.get_response(URI.parse(base_url.strip))
    		context[$1] = resp.body
    		return ''
  	end
    end
  end
end

Liquid::Template.register_tag('fetch', JekyllFetch::JsonFetchTag)
