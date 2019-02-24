class SessionService

  def get_token
    get_json("/api_token.php?command=request")[:token]
  end

  private

  def conn
    url = "https://opentdb.com"
    Faraday.new(url: url) do |faraday|
        faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
