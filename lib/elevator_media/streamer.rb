module ElevatorMedia
    class Streamer 
        def self.getContent
            response = HTTParty.get("http://api.icndb.com/jokes/random", headers: { "Accept" => "application/json" })
            output = "<span>" + response.to_a[1][1]["joke"] + "</span>"
    	    return output
        end
    end
end