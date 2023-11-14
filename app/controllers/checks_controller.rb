class ChecksController < ApplicationController
  def index
    @checks = Check.all
  end


  def new
    @check = Check.new
  end

  def create
    @check = Check.new(params.require(:check).permit(:title, :startday, :finishday, :allday, :memo))
    if @check.save
      flash[:notice] = "新規メモを作成しました"
      redirect_to :checks
    else
      render "new"
    end
  end

  def show
    @check = Check.find(params[:id])
  end

  def edit
    @check = Check.find(params[:id])
  end

  def update
    @check = Check.find(params[:id])
    if @check.update(params.require(:check).permit(:title, :startday, :finishday, :allday, :memo))
      flash[:notice] = "ユーザーIDが「#{@check.id}」の情報を更新しました"
      redirect_to :checks
    else
      render "edit"
    end

  end

  def destroy
    @check = Check.find_by(params[:id])
    @check.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to :checks
  end
  
end
