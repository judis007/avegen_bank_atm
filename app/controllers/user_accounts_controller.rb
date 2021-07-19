class UserAccountsController < ApplicationController
    
    def account_number
    end

    def pin
        @account_number = params[:account_number]
        user_account = UserAccount.find_by(account_number: params[:account_number])

        if user_account
            user_id = user_account.user_id
            user = User.find(user_id)
            @welcome_account_holder = "Welcome #{user.first_name.capitalize} #{user.last_name.capitalize} !"
            render 'pin'
        else
            redirect_to root_path
            flash[:alert] = "Seems like you don't have an account!"
        end
            
    end
end