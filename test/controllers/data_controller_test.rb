require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  test "should get stations" do
    get data_stations_url
    assert_response :success
  end
end
