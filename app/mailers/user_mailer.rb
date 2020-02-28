class UserMailer < ApplicationMailer

    def reserve_email
        @user = params[:user]
        @booking = params[:booking]
        mail(to: @booking.zeppelin.user.email, subject: 'You receive an order for your zeppelin')
    end

    def confirm_user
        @user = params[:user]
        @booking = params[:booking]
        mail(to: @user.email, subject: 'Your Order has been confirmed')
    end

    def booking_email
        @user = params[:user]
        @booking = params[:booking]
        mail(to: @user.email, subject: 'Thanks for your order !')
    end
end
