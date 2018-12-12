class Station

  attr_reader :name, :fuel_type, :distance, :access_times, :address

  def initialize(station_data)
    @name = station_data[:station_name]
    @address = station_data[:street_address]
    @fuel_type = station_data[:fuel_type_code]
    @distance = station_data[:distance]
    @access_times = station_data[:access_days_time]
  end

end
