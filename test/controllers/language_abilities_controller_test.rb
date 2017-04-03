require 'test_helper'

class LanguageAbilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_ability = language_abilities(:one)
  end

  test "should get index" do
    get language_abilities_url
    assert_response :success
  end

  test "should get new" do
    get new_language_ability_url
    assert_response :success
  end

  test "should create language_ability" do
    assert_difference('LanguageAbility.count') do
      post language_abilities_url, params: { language_ability: { language: @language_ability.language, notes: @language_ability.notes, profile_id: @language_ability.profile_id, reading: @language_ability.reading, speech: @language_ability.speech, writing: @language_ability.writing } }
    end

    assert_redirected_to language_ability_url(LanguageAbility.last)
  end

  test "should show language_ability" do
    get language_ability_url(@language_ability)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_ability_url(@language_ability)
    assert_response :success
  end

  test "should update language_ability" do
    patch language_ability_url(@language_ability), params: { language_ability: { language: @language_ability.language, notes: @language_ability.notes, profile_id: @language_ability.profile_id, reading: @language_ability.reading, speech: @language_ability.speech, writing: @language_ability.writing } }
    assert_redirected_to language_ability_url(@language_ability)
  end

  test "should destroy language_ability" do
    assert_difference('LanguageAbility.count', -1) do
      delete language_ability_url(@language_ability)
    end

    assert_redirected_to language_abilities_url
  end
end
