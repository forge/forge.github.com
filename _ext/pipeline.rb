require 'docs'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/news' )
  extension Awestruct::Extensions::Docs::Index.new( '/docs/using', :docs_using) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/get_involved', :docs_get_involved) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/important_plugins', :docs_important_plugins) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/plugin_development', :docs_plugin_development)
  # extension Awestruct::Extensions::Indexifier.new
end

