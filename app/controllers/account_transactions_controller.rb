class AccountTransactionsController < ApplicationController

    def amount; end

    def new
        @option = params[:option]
        @account_id = params[:account_id]
        @user_account_id = params[:user_account]
    end

    def operations
        @transaction = AccountTransaction.create!(amount: params[:amount], transaction_type: params[:option], user_account_id: params[:user_account])
        account_name = Account.find(params[:account_id]).name
        account = UserAccount.find_by(user_id: params[:user_account], account_id: params[:account_id])

        unless account.nil?
            user = account.id
            current_balance = account.balance
            transaction = AccountTransaction.select(:amount).where(user_account_id: 1).last
            transaction_amount = transaction.amount

            if params[:option] == 'withdraw'
                final_balance = current_balance.to_f - transaction_amount.to_f
                if transaction_amount > current_balance
                    redirect_to root_path
                    flash[:alert] = "You don't have sufficient balance for the withdrawal!"
                else
                    account.update(balance: final_balance)
                    redirect_to receipt_path(final_balance: final_balance)
                end
            elsif params[:option] == 'deposit'
                final_balance = current_balance.to_f + transaction_amount.to_f
                account.update(balance: final_balance)
                redirect_to receipt_path(final_balance: final_balance)
            elsif params[:option] == 'balance'
                redirect_to receipt_path(final_balance: current_balance)
            end
        else
            redirect_to root_path
            flash[:alert] = "You don't have a #{account_name} account in your bank!"
        end

    end

    def receipt
        @final_balance = params[:final_balance]
        @current_balance = params[:current_balance]
    end

end