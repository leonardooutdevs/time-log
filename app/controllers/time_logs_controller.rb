class TimeLogsController < ApplicationController
  before_action :fetch_time_log, only: %i[edit update destroy]

  def index
    @query = TimeLog.ransack(params[:q])

    @time_logs = query.result
  end

  def new = render_form

  def edit; end

  def create
    @time_log = TimeLog.new(permit_params)

    return redirect_to time_logs_path, notice: t('.successful') if time_log.save

    render_form(time_log)
  end

  def update
    return turbo_stream if time_log.update(permit_params)

    render :edit, status: :unprocessable_entity
  end

  def destroy = time_log.destroy!

  private

  attr_reader :time_log, :query

  def permit_params
    params.require(:time_log).permit(:description, :duration_hours, :status)
  end

  def render_form(time_log = TimeLog.new)
    render turbo_stream: turbo_stream
      .replace('time_log_form', partial: 'time_logs/form', locals: { time_log: time_log })
  end

  def fetch_time_log
    @time_log = TimeLog.find(params.require(:id))
  end
end
