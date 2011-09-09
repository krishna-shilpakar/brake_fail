
class HoptoadApi < ActiveResource::Base
self.site = "https://sprout.airbrakeapp.com"
  class << self
   @@auth_token = "e0313493b77ea5bda9a3cbf2e2862416bc9256c9"

    def find(*arguments)
      arguments = append_auth_token_to_params(*arguments)
      super(*arguments)
    end

    def append_auth_token_to_params(*arguments)
      opts = arguments.last.is_a?(Hash) ? arguments.pop : {}
      opts = opts.has_key?(:params) ? opts : opts.merge(:params => {}) 
      opts[:params] = opts[:params].merge(:auth_token => @@auth_token)
      arguments << opts
      arguments
    end
  end
end

class Error < HoptoadApi
end
