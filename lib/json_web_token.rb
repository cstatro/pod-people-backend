class JsonWebToken
    

    def self.encode(payload)
        JWT.encode(payload, ENV["SECRET"])
    end

    def self.decode(token)
        JWT.decode(token, ENV["SECRET"])
    rescue
        nil
    end
   
end