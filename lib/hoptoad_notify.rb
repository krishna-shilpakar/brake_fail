
%w(grown_notify active_resource sequel).each { |lib| require "hoptoad_notify/#{lib}" }

module HoptoadNotify
  class << self # :nodoc: all
    attr_accessor :hoptoad_url, :api_key
    def configure
      yield self
    end
  end
end