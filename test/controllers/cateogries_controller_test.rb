require 'test_helper'

class CateogriesControllerTest < ActionController::TestCase
  setup do
    @cateogry = cateogries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cateogries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cateogry" do
    assert_difference('Cateogry.count') do
      post :create, cateogry: { label: @cateogry.label }
    end

    assert_redirected_to cateogry_path(assigns(:cateogry))
  end

  test "should show cateogry" do
    get :show, id: @cateogry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cateogry
    assert_response :success
  end

  test "should update cateogry" do
    patch :update, id: @cateogry, cateogry: { label: @cateogry.label }
    assert_redirected_to cateogry_path(assigns(:cateogry))
  end

  test "should destroy cateogry" do
    assert_difference('Cateogry.count', -1) do
      delete :destroy, id: @cateogry
    end

    assert_redirected_to cateogries_path
  end
end
