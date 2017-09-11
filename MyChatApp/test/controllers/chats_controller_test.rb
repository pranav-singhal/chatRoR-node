require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get chats_user_url
    assert_response :success
  end

  test "should get index" do
    get chats_index_url
    assert_response :success
  end

end
