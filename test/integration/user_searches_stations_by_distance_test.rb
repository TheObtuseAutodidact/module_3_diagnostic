require 'test_helper'

class UserSearchesStationsByDistanceTest < ActionDispatch::IntegrationTest
  test "user searches by zip" do
    visit "/"
    fill_in "80302"
    click_on "Locate"

    assert(current_path), ("/search?zip=80203")

  end
end
