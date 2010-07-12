require 'test_helper'

class EmailContentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_content" do
    assert_difference('EmailContent.count') do
      post :create, :email_content => { }
    end

    assert_redirected_to email_content_path(assigns(:email_content))
  end

  test "should show email_content" do
    get :show, :id => email_contents(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => email_contents(:one).to_param
    assert_response :success
  end

  test "should update email_content" do
    put :update, :id => email_contents(:one).to_param, :email_content => { }
    assert_redirected_to email_content_path(assigns(:email_content))
  end

  test "should destroy email_content" do
    assert_difference('EmailContent.count', -1) do
      delete :destroy, :id => email_contents(:one).to_param
    end

    assert_redirected_to email_contents_path
  end
end
