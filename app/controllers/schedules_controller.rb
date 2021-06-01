class SchedulesController < ApplicationController
  
  def index
    @schedules = Schedule.all
    @total = Schedule.count
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start_date, :end_date, :all_date, :memo))
    if @schedule.save
      flash[:success] = "スケジュールを登録しました"
      redirect_to :schedules
    else
      flash[:failure] = "スケジュールを登録できませんでした"
      render "new"
    end
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start_date, :end_date, :all_date, :memo))
      flash[:success] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      flash[:failure] = "スケジュールを更新できませんでした"
      render "edit"
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:delete] = "ユーザーを削除しました"
    redirect_to :schedules
  end
end
