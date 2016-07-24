class MemosController < ApplicationController
  def new
    @memo = current_user.memos.build
  end

  def index
    @memos = current_user.memos.all
  end

  def create
    @memo = current_user.memos.build(memo_params)
    if @memo.save 
      redirect_to root_path
    end
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :detail)
  end
end
