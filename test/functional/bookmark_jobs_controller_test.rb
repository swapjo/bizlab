require 'test_helper'

class BookmarkJobsControllerTest < ActionController::TestCase
  setup do
    @bookmark_job = bookmark_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmark_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark_job" do
    assert_difference('BookmarkJob.count') do
      post :create, bookmark_job: { job_id: @bookmark_job.job_id, user_id: @bookmark_job.user_id }
    end

    assert_redirected_to bookmark_job_path(assigns(:bookmark_job))
  end

  test "should show bookmark_job" do
    get :show, id: @bookmark_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmark_job
    assert_response :success
  end

  test "should update bookmark_job" do
    put :update, id: @bookmark_job, bookmark_job: { job_id: @bookmark_job.job_id, user_id: @bookmark_job.user_id }
    assert_redirected_to bookmark_job_path(assigns(:bookmark_job))
  end

  test "should destroy bookmark_job" do
    assert_difference('BookmarkJob.count', -1) do
      delete :destroy, id: @bookmark_job
    end

    assert_redirected_to bookmark_jobs_path
  end
end
