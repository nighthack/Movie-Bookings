require "test_helper"

class TheatresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theatre = theatres(:one)
  end

  test "should get index" do
    get theatres_url, as: :json
    assert_response :success
  end

  test "should create theatre" do
    assert_difference('Theatre.count') do
      post theatres_url, params: { theatre: { t_address: @theatre.t_address, t_contact: @theatre.t_contact, t_name: @theatre.t_name } }, as: :json
    end

    assert_response 201
  end

  test "should show theatre" do
    get theatre_url(@theatre), as: :json
    assert_response :success
  end

  test "should update theatre" do
    patch theatre_url(@theatre), params: { theatre: { t_address: @theatre.t_address, t_contact: @theatre.t_contact, t_name: @theatre.t_name } }, as: :json
    assert_response 200
  end

  test "should destroy theatre" do
    assert_difference('Theatre.count', -1) do
      delete theatre_url(@theatre), as: :json
    end

    assert_response 204
  end
end
