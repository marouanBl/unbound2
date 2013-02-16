require 'test_helper'

class UserHasCredibilitiesControllerTest < ActionController::TestCase
  setup do
    @user_has_credibility = user_has_credibilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_has_credibilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_has_credibility" do
    assert_difference('UserHasCredibility.count') do
      post :create, user_has_credibility: { credibility_articles_id: @user_has_credibility.credibility_articles_id, credibility_id: @user_has_credibility.credibility_id, users_id: @user_has_credibility.users_id }
    end

    assert_redirected_to user_has_credibility_path(assigns(:user_has_credibility))
  end

  test "should show user_has_credibility" do
    get :show, id: @user_has_credibility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_has_credibility
    assert_response :success
  end

  test "should update user_has_credibility" do
    put :update, id: @user_has_credibility, user_has_credibility: { credibility_articles_id: @user_has_credibility.credibility_articles_id, credibility_id: @user_has_credibility.credibility_id, users_id: @user_has_credibility.users_id }
    assert_redirected_to user_has_credibility_path(assigns(:user_has_credibility))
  end

  test "should destroy user_has_credibility" do
    assert_difference('UserHasCredibility.count', -1) do
      delete :destroy, id: @user_has_credibility
    end

    assert_redirected_to user_has_credibilities_path
  end
end
