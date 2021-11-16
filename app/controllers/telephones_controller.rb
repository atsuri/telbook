class TelephonesController < ApplicationController
    def index
        @telephones = Telephone.all
    end

    def show
        @telephones = Telephone.all
    end

    #登録
    def create
        @telephone = Telephone.new
        @telephone.number = params[:number]
        @telephone.cellphone = params[:cellphone]
        @telephone.friend = Friend.find(params[:friend_id])
        if @telephone.save
            # redirect_to :friend
            redirect_to Friend.find(params[:friend_id])
        else
            @friend = Friend.find(params[:friend_id])
            render "friends/show"
        end
    end

    #削除
    def destroy
        @telephone = Telephone.find(params[:id])
        friend = @telephone.friend
        @telephone.destroy
        # redirect_to :friend
        redirect_to friend
    end
end