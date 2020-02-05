require 'test_helper'

class WinnerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winner_type = winner_types(:one)
  end

  test "should get index" do
    get winner_types_url, as: :json
    assert_response :success
  end

  test "should create winner_type" do
    assert_difference('WinnerType.count') do
      post winner_types_url, params: { winner_type: { description: @winner_type.description } }, as: :json
    end

    assert_response 201
  end

  test "should show winner_type" do
    get winner_type_url(@winner_type), as: :json
    assert_response :success
  end

  test "should update winner_type" do
    patch winner_type_url(@winner_type), params: { winner_type: { description: @winner_type.description } }, as: :json
    assert_response 200
  end

  test "should destroy winner_type" do
    assert_difference('WinnerType.count', -1) do
      delete winner_type_url(@winner_type), as: :json
    end

    assert_response 204
  end
end
