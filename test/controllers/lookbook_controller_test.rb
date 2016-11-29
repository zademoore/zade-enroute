require 'test_helper'

class LookbookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lookbook_index_url
    assert_response :success
  end

end
