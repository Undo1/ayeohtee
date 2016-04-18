require 'test_helper'

class DatapointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datapoint = datapoints(:one)
  end

  test "should get index" do
    get datapoints_url
    assert_response :success
  end

  test "should get new" do
    get new_datapoint_url
    assert_response :success
  end

  test "should create datapoint" do
    assert_difference('Datapoint.count') do
      post datapoints_url, params: { datapoint: { device_id: @datapoint.device_id, metric: @datapoint.metric, value: @datapoint.value } }
    end

    assert_redirected_to datapoint_path(Datapoint.last)
  end

  test "should show datapoint" do
    get datapoint_url(@datapoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_datapoint_url(@datapoint)
    assert_response :success
  end

  test "should update datapoint" do
    patch datapoint_url(@datapoint), params: { datapoint: { device_id: @datapoint.device_id, metric: @datapoint.metric, value: @datapoint.value } }
    assert_redirected_to datapoint_path(@datapoint)
  end

  test "should destroy datapoint" do
    assert_difference('Datapoint.count', -1) do
      delete datapoint_url(@datapoint)
    end

    assert_redirected_to datapoints_path
  end
end
