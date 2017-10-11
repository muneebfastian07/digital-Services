require 'test_helper'

class CustomerStoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_stories_index_url
    assert_response :success
  end

end
