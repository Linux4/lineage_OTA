require 'json'

module JekyllJson
  class JsonTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
	if /(.+) (.+)/.match(@text)
    		context[$1] = JSON context[$2]
    		return ''
  	end
    end
  end
end

Liquid::Template.register_tag('json', JekyllJson::JsonTag)
