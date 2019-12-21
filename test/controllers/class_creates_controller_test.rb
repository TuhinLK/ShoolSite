require 'test_helper'

class ClassCreatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get class_creates_index_url
    assert_response :success
  end

  test "should get show" do
    get class_creates_show_url
    assert_response :success
  end

  test "should get edit" do
    get class_creates_edit_url
    assert_response :success
  end

  test "should get new" do
    get class_creates_new_url
    assert_response :success
  end

end
