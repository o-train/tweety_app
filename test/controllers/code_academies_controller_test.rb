require 'test_helper'

class CodeAcademiesControllerTest < ActionController::TestCase
  setup do
    @code_academy = code_academies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_academies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_academy" do
    assert_difference('CodeAcademy.count') do
      post :create, code_academy: { content: @code_academy.content, user_id: @code_academy.user_id }
    end

    assert_redirected_to code_academy_path(assigns(:code_academy))
  end

  test "should show code_academy" do
    get :show, id: @code_academy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_academy
    assert_response :success
  end

  test "should update code_academy" do
    patch :update, id: @code_academy, code_academy: { content: @code_academy.content, user_id: @code_academy.user_id }
    assert_redirected_to code_academy_path(assigns(:code_academy))
  end

  test "should destroy code_academy" do
    assert_difference('CodeAcademy.count', -1) do
      delete :destroy, id: @code_academy
    end

    assert_redirected_to code_academies_path
  end
end
