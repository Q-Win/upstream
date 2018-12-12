require 'rails_helper'

describe 'User' do
  it ' can search for stations with zip' do
    VCR.use_cassette("user_enters_zipcode") do

      visit '/'

      page.fill_in 'Search by zip...', with: '80203'
      
      click_on "Locate"


    end
  end


end
