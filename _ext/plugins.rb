require 'yaml'

module Awestruct
  module Extensions
    module Plugins
      class PluginIndex      
        def initialize(assign_to=:plugins)
          @assign_to = assign_to
        end
        
        def execute(site)
          plugins = []
          open'https://raw.github.com/forge/plugin-repository/master/repository.yaml' do |repo|
              YAML.load_documents( repo ) do |plugin|
                
                plugins << plugin
                
              end
            end
          
          puts plugins
          
          site.send( "#{@assign_to}=", plugins )
        end
      end
    end
  end
end

