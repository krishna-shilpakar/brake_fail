require 'thor'
require 'forever'
require ''
require 'api'

module HoptoadNotify # :nodoc: all
  class CLI < Thor # :nodoc: all
    include Thor::Actions
    # include Cf::Config
    
    map "-v" => :version
    
    desc "setup", "Setup the credentials"
    def setup
      api_key = ask("Your hoptoad api key: ")
      api_url = ask("Your api url: ")
      set_credentials(api_key, api_url)
      set_up_database
    end
    
    no_tasks do
      def set_credentials(api_key, api_key)
        # Store it in ~/.hoptoad_notify/creds.yml
        
      end
      
      def method_name
        # Store it in ~/.hoptoad_notify/dbname.db
      end
    end
    
    desc "start", "Start the notifyr"
    def start
      # Start the forever daemon
      HoptoadNotify
      
    end
  end
end