require "test_helper"

class BayernPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bayern_player = bayern_players(:one)
  end

  test "should get index" do
    get bayern_players_url
    assert_response :success
  end

  test "should get new" do
    get new_bayern_player_url
    assert_response :success
  end

  test "should create bayern_player" do
    assert_difference("BayernPlayer.count") do
      post bayern_players_url, params: { bayern_player: { email: @bayern_player.email, first_name: @bayern_player.first_name, last_name: @bayern_player.last_name, phone: @bayern_player.phone, twitter: @bayern_player.twitter } }
    end

    assert_redirected_to bayern_player_url(BayernPlayer.last)
  end

  test "should show bayern_player" do
    get bayern_player_url(@bayern_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_bayern_player_url(@bayern_player)
    assert_response :success
  end

  test "should update bayern_player" do
    patch bayern_player_url(@bayern_player), params: { bayern_player: { email: @bayern_player.email, first_name: @bayern_player.first_name, last_name: @bayern_player.last_name, phone: @bayern_player.phone, twitter: @bayern_player.twitter } }
    assert_redirected_to bayern_player_url(@bayern_player)
  end

  test "should destroy bayern_player" do
    assert_difference("BayernPlayer.count", -1) do
      delete bayern_player_url(@bayern_player)
    end

    assert_redirected_to bayern_players_url
  end
end
