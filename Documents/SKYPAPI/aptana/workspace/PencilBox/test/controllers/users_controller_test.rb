require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { firstname: 'testFname1', id: '9999999', isactive: 't', lastname: 'testLname1', password: 'secret', password_confirmation: 'secret', remarks: 'test remarks txt', username: 'testuser', userprofile: 1 }
    end

    assert_redirected_to user_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { firstname: @user.firstname, id: @user.id, isactive: @user.isactive, lastname: @user.lastname, password: 'secret', password_confirmation: 'secret', remarks: @user.remarks, username: @user.username, userprofile: @user.userprofile }
    assert_redirected_to user_path
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
