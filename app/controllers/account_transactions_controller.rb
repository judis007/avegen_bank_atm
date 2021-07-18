class AccountTransactionsController < ApplicationController

    def amount

    end

    def new
        @option = params[:option]
        @account_id = params[:account_id]
        @user_account_id = params[:user_account]

        @transaction = AccountTransaction.new
    end

    def operations
        # session[:options] = params[:options]
        # session[:account_id] = params[:account_id]
        # session[:user_account_id] = params[:user_account_id]

        @transaction = AccountTransaction.create(amount: params[:amount], transaction_type: params[:option], user_account_id: params[:user_account_id])

        account = UserAccount.find(params[:user_account])
        user = account.id
        current_balance = account.balance
        transaction = AccountTransaction.find_by(user_account_id: params[:user_account])
        transaction_amount = transaction.amount

        if params[:option] == 'withdraw'
            final_balance = current_balance.to_f - transaction_amount.to_f
            if transaction_amount > current_balance
                redirect_to root_path
                flash[:notice] = "You don't have balance for the withdrawal!"
            else
                account.update(balance: final_balance)
            end
        elsif params[:option] == 'deposit'
            final_balance = current_balance.to_f + transaction_amount.to_f
            account.update(balance: final_balance)
        end

    end

    def receipt
    end

end