module ApplicationHelper
    
    def admin_check()
        current_user && current_user.is_admin == true
    end
end
