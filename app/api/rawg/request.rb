require 'rest-client'

module Rawg
  class Request
    TOKEN = '0be6dbbca0164b6896ad41f94fb1a7b2'
    BASE_URL = 'https://api.rawg.io/api'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}?key=#{TOKEN}",
        headers: { 'Content-Type' => 'application/json' }
      )
      JSON.parse(result.body)
    end
  end
end
