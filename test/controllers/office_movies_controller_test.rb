require 'test_helper'

class OfficeMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get office_movies_index_url
    assert_response :success
  end

end
