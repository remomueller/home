# frozen_string_literal: true

require "test_helper"

# Assure that boxes can be managed.
class BoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @box = boxes(:one)
  end

  def box_params
    {
      name: @box.name,
      description: @box.description,
      closed: @box.closed
    }
  end

  test "should get index" do
    get boxes_path
    assert_response :success
  end

  test "should get new" do
    get new_box_path
    assert_response :success
  end

  test "should create box" do
    assert_difference("Box.count") do
      post boxes_path, params: { box: box_params.merge(name: "N1") }
    end

    assert_redirected_to box_path(Box.last)
  end

  test "should show box" do
    get box_path(@box)
    assert_response :success
  end

  test "should get edit" do
    get edit_box_path(@box)
    assert_response :success
  end

  test "should update box" do
    patch box_path(@box), params: { box: box_params.merge(name: "A2") }
    assert_redirected_to box_path(@box)
  end

  test "should destroy box" do
    assert_difference("Box.count", -1) do
      delete box_path(@box)
    end
    assert_redirected_to boxes_path
  end
end
