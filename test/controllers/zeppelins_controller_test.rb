require 'test_helper'

class ZeppelinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zeppelins_index_url
    assert_response :success
  end

  test "should get show" do
    get zeppelins_show_url
    assert_response :success
  end

  test "should get new" do
    get zeppelins_new_url
    assert_response :success
  end

  test "should get create" do
    get zeppelins_create_url
    assert_response :success
  end

end
