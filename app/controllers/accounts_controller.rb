class AccountsController < ApplicationController

    def index
        @accounts = Account.all
        @select_accounts = Account.all.map{ |c| [c.name, c.id] }
        user_account = UserAccount.find_by_account_number(params[:account_number])
        @user_account_id = user_account.id

        if user_account
            unless user_account.password_digest == params[:pin].to_i
                redirect_to root_path
                flash[:alert] = 'Sorry! You entered the wrong PIN.'
            end
        end
    end

end