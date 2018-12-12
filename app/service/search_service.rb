class SearchService

  def initialize

  end

  def get_stations_by_zip(zip)
    get_json("/nearest.json?radius=6&location=#{zip}&fuel_type=ELEC,LPG")
  end



  private

  def get_json(url)
    response = conn.get(url)

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(:url => 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |faraday|

      faraday.headers['api_key'] = ENV["API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

end
