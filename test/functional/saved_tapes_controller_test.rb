require 'test_helper'

class SavedTapesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_tapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_tape" do
    assert_difference('SavedTape.count') do
      post :create, :saved_tape => { }
    end

    assert_redirected_to saved_tape_path(assigns(:saved_tape))
  end

  test "should show saved_tape" do
    get :show, :id => saved_tapes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => saved_tapes(:one).to_param
    assert_response :success
  end

  test "should update saved_tape" do
    put :update, :id => saved_tapes(:one).to_param, :saved_tape => { }
    assert_redirected_to saved_tape_path(assigns(:saved_tape))
  end

  test "should destroy saved_tape" do
    assert_difference('SavedTape.count', -1) do
      delete :destroy, :id => saved_tapes(:one).to_param
    end

    assert_redirected_to saved_tapes_path
  end
end
