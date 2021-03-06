module RedoxEngine
  # Exceptions used in this gem will be defined here

  # raise this on errors obtaining an access token
  class TokenError < StandardError; end

  # raise this on RedoxEngine::Client.new without setting api_key/secret
  class APIKeyError < StandardError
    KEY_ERROR_MSG = "
    Keys not found. Please set API Key/secret using RedoxEngine.configure:
      RedoxEngine.configure do |redox|
        redox.api_key = <API Key>
        redox.secret = <Secret>
      end
    ".freeze
    def initialize(message = nil)
      super(message || KEY_ERROR_MSG)
    end
  end
end
