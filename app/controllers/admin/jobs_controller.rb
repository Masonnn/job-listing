class Admin::JobsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_filter :require_is_admin

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = '你不是管理员！无权处理该事项！'
      redirect_to root_path
    end
  end

end
