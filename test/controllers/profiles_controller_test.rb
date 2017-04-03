require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { address_as_id: @profile.address_as_id, blood: @profile.blood, current_address: @profile.current_address, date_of_birth: @profile.date_of_birth, height: @profile.height, id_no: @profile.id_no, married: @profile.married, mobile_phone: @profile.mobile_phone, name: @profile.name, nationality: @profile.nationality, no: @profile.no, phone: @profile.phone, place_of_birth: @profile.place_of_birth, religion: @profile.religion, sex: @profile.sex, tribe: @profile.tribe, user_id: @profile.user_id, weight: @profile.weight } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { address_as_id: @profile.address_as_id, blood: @profile.blood, current_address: @profile.current_address, date_of_birth: @profile.date_of_birth, height: @profile.height, id_no: @profile.id_no, married: @profile.married, mobile_phone: @profile.mobile_phone, name: @profile.name, nationality: @profile.nationality, no: @profile.no, phone: @profile.phone, place_of_birth: @profile.place_of_birth, religion: @profile.religion, sex: @profile.sex, tribe: @profile.tribe, user_id: @profile.user_id, weight: @profile.weight } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
