class UserAccountsController < ApplicationController
    
    def account_number
    end

    def pin
        @account_number = params[:account_number]
        user_account = UserAccount.find_by(account_number: params[:account_number])

        if user_account
            render 'pin'
        else
            redirect_to root_path
        end
            
    end
end