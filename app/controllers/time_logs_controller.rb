class TimeLogsController < ApplicationController
  before_action :fetch_time_log, only: %i[edit update]

  def index
    @time_logs = TimeLog.all
  end

  def new
    @time_log = TimeLog.new
  end

  def edit; end

  def create
    @time_log = TimeLog.new(permit_params)

    return redirect_to time_logs_path, notice: 'Successful' if @time_log.save

    render :new
  end

  def update
    return redirect_to time_logs_path, notice: 'Successful' if @time_log.update(permit_params)

    render :edit
  end

  private

  def permit_params
    params.require(:time_log).permit(:duration_hours, :description, :status)
  end

  def fetch_time_log
    @time_log = TimeLog.find(params.require(:id))
  end
end
