class SearchService

  def initialize

  end

  # def get_stations_by_zip(zip)
  #   get_json("nearest.json?radius=6&location=#{zip}&fuel_type=ELEC,LPG")
  # end

  # def get_stations_by_zip(zip)
  #   get_json("nearest.json?api_key=WDusvifHHONRrjprW1g4h0U8qmd4g52PwUblxx3G&radius=6&location=#{zip}&fuel_type=ELEC,LPG")
  # end

  def get_stations_by_zip(zip)
    get_json("nearest.json?api_key=#{ENV['api_key']}&radius=6&location=#{zip}&fuel_type=ELEC,LPG")
  end



  private

  def get_json(url)
    response = conn.get(url)

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(:url => 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |faraday|

      faraday.adapter Faraday.default_adapter
      # faraday.headers['api_key'] = ENV["api_key"]
    end
  end

end
