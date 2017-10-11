require 'test_helper'

class TechnologyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get technology_index_url
    assert_response :success
  end

end
