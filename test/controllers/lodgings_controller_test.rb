require 'test_helper'

class LodgingsControllerTest < ActionController::TestCase
  setup do
    @lodging = lodgings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodgings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lodging" do
    assert_difference('Lodging.count') do
      post :create, lodging: { event_id: @lodging.event_id, location: @lodging.location, max_females: @lodging.max_females, max_males: @lodging.max_males, max_neutral: @lodging.max_neutral, name: @lodging.name, registration_id: @lodging.registration_id }
    end

    assert_redirected_to lodging_path(assigns(:lodging))
  end

  test "should show lodging" do
    get :show, id: @lodging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lodging
    assert_response :success
  end

  test "should update lodging" do
    patch :update, id: @lodging, lodging: { event_id: @lodging.event_id, location: @lodging.location, max_females: @lodging.max_females, max_males: @lodging.max_males, max_neutral: @lodging.max_neutral, name: @lodging.name, registration_id: @lodging.registration_id }
    assert_redirected_to lodging_path(assigns(:lodging))
  end

  test "should destroy lodging" do
    assert_difference('Lodging.count', -1) do
      delete :destroy, id: @lodging
    end

    assert_redirected_to lodgings_path
  end
end
