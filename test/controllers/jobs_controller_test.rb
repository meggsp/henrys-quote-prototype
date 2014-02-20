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
      post :create, job: { customer_id: @job.customer_id, customer_po: @job.customer_po, delivery_date: @job.delivery_date, install_1_date: @job.install_1_date, install_2_date: @job.install_2_date, install_location: @job.install_location, job_id: @job.job_id, job_info: @job.job_info, production_due_date: @job.production_due_date, production_notes: @job.production_notes, production_start_date: @job.production_start_date }
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
    patch :update, id: @job, job: { customer_id: @job.customer_id, customer_po: @job.customer_po, delivery_date: @job.delivery_date, install_1_date: @job.install_1_date, install_2_date: @job.install_2_date, install_location: @job.install_location, job_id: @job.job_id, job_info: @job.job_info, production_due_date: @job.production_due_date, production_notes: @job.production_notes, production_start_date: @job.production_start_date }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
