require 'test_helper'

class AllHandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_hands_index_url
    assert_response :success
  end

end
