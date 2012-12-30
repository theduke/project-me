require 'test_helper'

class TimeReportsControllerTest < ActionController::TestCase
  setup do
    @time_report = time_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_report" do
    assert_difference('TimeReport.count') do
      post :create, time_report: { started: @time_report.started, stopped: @time_report.stopped }
    end

    assert_redirected_to time_report_path(assigns(:time_report))
  end

  test "should show time_report" do
    get :show, id: @time_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_report
    assert_response :success
  end

  test "should update time_report" do
    put :update, id: @time_report, time_report: { started: @time_report.started, stopped: @time_report.stopped }
    assert_redirected_to time_report_path(assigns(:time_report))
  end

  test "should destroy time_report" do
    assert_difference('TimeReport.count', -1) do
      delete :destroy, id: @time_report
    end

    assert_redirected_to time_reports_path
  end
end
