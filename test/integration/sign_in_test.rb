require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest

  # setup
  # exercise
  # verify
  # teardown
  test "sign in admin and sign in not admin" do
    login_as users(:marc_not_admin)
    visit "/"
    #save_and_open_screenshot
    assert_equal 200, page.status_code
    #click_on "Log out"
    #assert page.has_content?("profile")
    #click_link('')
  end
end
