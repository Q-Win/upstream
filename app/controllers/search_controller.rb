require 'pry'

class SearchController < ApplicationController
  def index

    @facade = StationFacade.new(params['q'])
    binding.pry

  end
end
