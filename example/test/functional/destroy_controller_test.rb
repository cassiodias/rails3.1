require 'test_helper'

class DestroyControllerTest < ActionController::TestCase
  test "should get Developer" do
    get :Developer
    assert_response :success
  end

end
