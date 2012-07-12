require 'test_helper'

class PrelaunchSubscribersControllerTest < ActionController::TestCase
  setup do
    @prelaunch_subscriber = prelaunch_subscribers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prelaunch_subscribers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prelaunch_subscriber" do
    assert_difference('PrelaunchSubscriber.count') do
      post :create, :prelaunch_subscriber => { :birthdate => @prelaunch_subscriber.birthdate, :email => @prelaunch_subscriber.email, :location => @prelaunch_subscriber.location, :name => @prelaunch_subscriber.name, :phone => @prelaunch_subscriber.phone, :portfolio => @prelaunch_subscriber.portfolio }
    end

    assert_redirected_to prelaunch_subscriber_path(assigns(:prelaunch_subscriber))
  end

  test "should show prelaunch_subscriber" do
    get :show, :id => @prelaunch_subscriber
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prelaunch_subscriber
    assert_response :success
  end

  test "should update prelaunch_subscriber" do
    put :update, :id => @prelaunch_subscriber, :prelaunch_subscriber => { :birthdate => @prelaunch_subscriber.birthdate, :email => @prelaunch_subscriber.email, :location => @prelaunch_subscriber.location, :name => @prelaunch_subscriber.name, :phone => @prelaunch_subscriber.phone, :portfolio => @prelaunch_subscriber.portfolio }
    assert_redirected_to prelaunch_subscriber_path(assigns(:prelaunch_subscriber))
  end

  test "should destroy prelaunch_subscriber" do
    assert_difference('PrelaunchSubscriber.count', -1) do
      delete :destroy, :id => @prelaunch_subscriber
    end

    assert_redirected_to prelaunch_subscribers_path
  end
end
