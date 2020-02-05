require 'test_helper'

class SweepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sweep = sweeps(:one)
  end

  test "should get index" do
    get sweeps_url, as: :json
    assert_response :success
  end

  test "should create sweep" do
    assert_difference('Sweep.count') do
      post sweeps_url, params: { sweep: { game_id: @sweep.game_id, is_winner: @sweep.is_winner, player_id: @sweep.player_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sweep" do
    get sweep_url(@sweep), as: :json
    assert_response :success
  end

  test "should update sweep" do
    patch sweep_url(@sweep), params: { sweep: { game_id: @sweep.game_id, is_winner: @sweep.is_winner, player_id: @sweep.player_id } }, as: :json
    assert_response 200
  end

  test "should destroy sweep" do
    assert_difference('Sweep.count', -1) do
      delete sweep_url(@sweep), as: :json
    end

    assert_response 204
  end
end
