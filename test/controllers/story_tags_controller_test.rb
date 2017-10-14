require 'test_helper'

class StoryTagsControllerTest < ActionController::TestCase
  setup do
    @story_tag = story_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_tag" do
    assert_difference('StoryTag.count') do
      post :create, story_tag: { story_id: @story_tag.story_id, tag_id: @story_tag.tag_id }
    end

    assert_redirected_to story_tag_path(assigns(:story_tag))
  end

  test "should show story_tag" do
    get :show, id: @story_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_tag
    assert_response :success
  end

  test "should update story_tag" do
    patch :update, id: @story_tag, story_tag: { story_id: @story_tag.story_id, tag_id: @story_tag.tag_id }
    assert_redirected_to story_tag_path(assigns(:story_tag))
  end

  test "should destroy story_tag" do
    assert_difference('StoryTag.count', -1) do
      delete :destroy, id: @story_tag
    end

    assert_redirected_to story_tags_path
  end
end
