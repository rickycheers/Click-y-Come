require 'test_helper'

class MenuDishesControllerTest < ActionController::TestCase
  setup do
    @menu_dish = menu_dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_dish" do
    assert_difference('MenuDish.count') do
      post :create, menu_dish: { dish_id: @menu_dish.dish_id, menu_id: @menu_dish.menu_id }
    end

    assert_redirected_to menu_dish_path(assigns(:menu_dish))
  end

  test "should show menu_dish" do
    get :show, id: @menu_dish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_dish
    assert_response :success
  end

  test "should update menu_dish" do
    put :update, id: @menu_dish, menu_dish: { dish_id: @menu_dish.dish_id, menu_id: @menu_dish.menu_id }
    assert_redirected_to menu_dish_path(assigns(:menu_dish))
  end

  test "should destroy menu_dish" do
    assert_difference('MenuDish.count', -1) do
      delete :destroy, id: @menu_dish
    end

    assert_redirected_to menu_dishes_path
  end
end
