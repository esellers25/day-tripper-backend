class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, "Tripper")
    end 
end
