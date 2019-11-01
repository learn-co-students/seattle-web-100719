require 'test_helper'

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get author_name:string_url
    assert_response :success
  end

end
