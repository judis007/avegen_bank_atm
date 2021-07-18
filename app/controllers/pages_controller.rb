class PagesController < ApplicationController

    def select_options
        @account_id = params[:id]
        @user_account_id = params[:user_account_id]
    end
end