require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { company_id: @job.company_id, description: @job.description, expiry_date: @job.expiry_date, image: @job.image, isapproved: @job.isapproved, ispublished: @job.ispublished, job_categiory_id: @job.job_categiory_id, meeting_address: @job.meeting_address, qualification: @job.qualification, title: @job.title, user_id: @job.user_id, vacancy_count: @job.vacancy_count }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { company_id: @job.company_id, description: @job.description, expiry_date: @job.expiry_date, image: @job.image, isapproved: @job.isapproved, ispublished: @job.ispublished, job_categiory_id: @job.job_categiory_id, meeting_address: @job.meeting_address, qualification: @job.qualification, title: @job.title, user_id: @job.user_id, vacancy_count: @job.vacancy_count }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
