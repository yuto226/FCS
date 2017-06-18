require 'test_helper'

class SatisticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get satistics_index_url
    assert_response :success
  end

end
