require "application_system_test_case"

class BayernPlayersTest < ApplicationSystemTestCase
  setup do
    @bayern_player = bayern_players(:one)
  end

  test "visiting the index" do
    visit bayern_players_url
    assert_selector "h1", text: "Bayern players"
  end

  test "should create bayern player" do
    visit bayern_players_url
    click_on "New bayern player"

    fill_in "Email", with: @bayern_player.email
    fill_in "First name", with: @bayern_player.first_name
    fill_in "Last name", with: @bayern_player.last_name
    fill_in "Phone", with: @bayern_player.phone
    fill_in "Twitter", with: @bayern_player.twitter
    click_on "Create Bayern player"

    assert_text "Bayern player was successfully created"
    click_on "Back"
  end

  test "should update Bayern player" do
    visit bayern_player_url(@bayern_player)
    click_on "Edit this bayern player", match: :first

    fill_in "Email", with: @bayern_player.email
    fill_in "First name", with: @bayern_player.first_name
    fill_in "Last name", with: @bayern_player.last_name
    fill_in "Phone", with: @bayern_player.phone
    fill_in "Twitter", with: @bayern_player.twitter
    click_on "Update Bayern player"

    assert_text "Bayern player was successfully updated"
    click_on "Back"
  end

  test "should destroy Bayern player" do
    visit bayern_player_url(@bayern_player)
    click_on "Destroy this bayern player", match: :first

    assert_text "Bayern player was successfully destroyed"
  end
end
