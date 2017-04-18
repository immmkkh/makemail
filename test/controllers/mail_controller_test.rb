require 'test_helper'

class MailControllerTest < ActionController::TestCase
  test "should get lotte" do
    get :lotte
    assert_response :success
  end

end
