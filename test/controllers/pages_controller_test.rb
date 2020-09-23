require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "there is an h1 with 'Home' in it" do
    get pages_home_url
    assert_select 'h1', match: /home/i
  end
end
