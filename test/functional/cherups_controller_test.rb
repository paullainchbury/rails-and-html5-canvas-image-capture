require 'test_helper'

class CherupsControllerTest < ActionController::TestCase
  setup do
    @cherup = cherups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cherups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cherup" do
    assert_difference('Cherup.count') do
      post :create, cherup: { content: @cherup.content, img: @cherup.img }
    end

    assert_redirected_to cherup_path(assigns(:cherup))
  end

  test "should show cherup" do
    get :show, id: @cherup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cherup
    assert_response :success
  end

  test "should update cherup" do
    put :update, id: @cherup, cherup: { content: @cherup.content, img: @cherup.img }
    assert_redirected_to cherup_path(assigns(:cherup))
  end

  test "should destroy cherup" do
    assert_difference('Cherup.count', -1) do
      delete :destroy, id: @cherup
    end

    assert_redirected_to cherups_path
  end
end
