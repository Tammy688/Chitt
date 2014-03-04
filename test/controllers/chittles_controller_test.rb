require 'test_helper'

class ChittlesControllerTest < ActionController::TestCase
  setup do
    @chittle = chittles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chittles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chittle" do
    assert_difference('Chittle.count') do
      post :create, chittle: { chit_text: @chittle.chit_text }
    end

    assert_redirected_to chittle_path(assigns(:chittle))
  end

  test "should show chittle" do
    get :show, id: @chittle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chittle
    assert_response :success
  end

  test "should update chittle" do
    patch :update, id: @chittle, chittle: { chit_text: @chittle.chit_text }
    assert_redirected_to chittle_path(assigns(:chittle))
  end

  test "should destroy chittle" do
    assert_difference('Chittle.count', -1) do
      delete :destroy, id: @chittle
    end

    assert_redirected_to chittles_path
  end
end
