class MemosController < ApplicationController
  def new
    @memo = current_user.memos.build
  end

  def create
    @memo = current_user.memos.build(memo_params)
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :detail)
  end
end
