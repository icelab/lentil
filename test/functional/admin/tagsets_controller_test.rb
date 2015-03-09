require 'test_helper'

class AdminTagsetsControllerTest < ActionController::TestCase

  setup do
    @controller = ::Admin::LentilTagsetsController.new
    user = lentil_admin_users(:one)
    sign_in user
  end

  test "should get to tagset index" do
    get :index
    assert_response :success
  end

  test "should get to tagset show" do
    get :show, :id => lentil_tagsets(:one)
    assert_response :success
  end

end
