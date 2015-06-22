require 'test_helper'

class PlansControllerTest < ActionController::TestCase
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan" do
    assert_difference('Plan.count') do
      post :create, plan: { category: @plan.category, disposal: @plan.disposal, factor: @plan.factor, incidence: @plan.incidence, name: @plan.name, remark: @plan.remark, serial_number: @plan.serial_number, situation: @plan.situation, symptom: @plan.symptom }
    end

    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should show plan" do
    get :show, id: @plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan
    assert_response :success
  end

  test "should update plan" do
    patch :update, id: @plan, plan: { category: @plan.category, disposal: @plan.disposal, factor: @plan.factor, incidence: @plan.incidence, name: @plan.name, remark: @plan.remark, serial_number: @plan.serial_number, situation: @plan.situation, symptom: @plan.symptom }
    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete :destroy, id: @plan
    end

    assert_redirected_to plans_path
  end
end
