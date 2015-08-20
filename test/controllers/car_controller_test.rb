require 'test_helper'

class CarControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get compare" do
    get :compare
    assert_response :success
  end

end
