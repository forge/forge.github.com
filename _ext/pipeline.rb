require File.join File.dirname(__FILE__), 'tweakruby'
require_relative 'restclient_extensions_enabler'
require_relative 'identities'
require_relative 'jira'
require_relative 'patched_atomizer'
require 'docs'
require 'plugins'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Identities::Storage.new
  extension Awestruct::Extensions::Posts.new( '/news' )
  extension Awestruct::Extensions::Docs::Index.new( '/docs/using', :docs_using) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/get_involved', :docs_get_involved) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/important_plugins', :docs_important_plugins) 
  extension Awestruct::Extensions::Docs::Index.new( '/docs/plugin_development', :docs_plugin_development)
  extension Awestruct::Extensions::Plugins::PluginIndex.new()
  # extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::PatchedAtomizer.new(:posts, '/blog/atom.xml', :additional_tags => ['forge'])

end

