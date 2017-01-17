class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def require_is_admin
        unless current_user.admin?
            flash[:alert] = '抱歉！你不是管理员，无权进行相关操作！'
            redirect_to root_path
        end
    end
end
