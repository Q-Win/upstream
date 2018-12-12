class StationFacade

  def initialize(zip)
    @zip = zip
    @_stations = nil
  end

  def station_by_zip(zip)
    station_results_by_zip.map do |station_data|
      Station.new(station_data)
    end
  end


  private

  def station_results_by_zip(zip)
    @_stations ||= service.get_stations_by_zip(zip)
  end

  def service
    SearchService.new
  end


end
