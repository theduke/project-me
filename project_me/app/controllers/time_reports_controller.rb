class TimeReportsController < ApplicationController
  # GET /time_reports
  # GET /time_reports.json
  def index
    @time_reports = TimeReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_reports }
    end
  end

  # GET /time_reports/1
  # GET /time_reports/1.json
  def show
    @time_report = TimeReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_report }
    end
  end

  # GET /time_reports/new
  # GET /time_reports/new.json
  def new
    @time_report = TimeReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_report }
    end
  end

  # GET /time_reports/1/edit
  def edit
    @time_report = TimeReport.find(params[:id])
  end

  # POST /time_reports
  # POST /time_reports.json
  def create
    @time_report = TimeReport.new(params[:time_report])

    respond_to do |format|
      if @time_report.save
        format.html { redirect_to @time_report, notice: 'Time report was successfully created.' }
        format.json { render json: @time_report, status: :created, location: @time_report }
      else
        format.html { render action: "new" }
        format.json { render json: @time_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_reports/1
  # PUT /time_reports/1.json
  def update
    @time_report = TimeReport.find(params[:id])

    respond_to do |format|
      if @time_report.update_attributes(params[:time_report])
        format.html { redirect_to @time_report, notice: 'Time report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_reports/1
  # DELETE /time_reports/1.json
  def destroy
    @time_report = TimeReport.find(params[:id])
    @time_report.destroy

    respond_to do |format|
      format.html { redirect_to time_reports_url }
      format.json { head :no_content }
    end
  end
end
