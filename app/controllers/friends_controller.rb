class FriendsController < ApplicationController
    
    #一覧
    def show
        @friend = Friend.find(params[:id])
    end

    #新規作成
    def new
        @friend = Friend.new
    end

    #編集
    def edit
        @friend = Friend.find(params[:id])
    end
    
    #新規登録
    def create
        @friend = Friend.new(params[:friend])
        if @friend.save
            redirect_to :root
        else
            render "new"
        end
    end

    #更新
    def update
        @friend = Friend.find(params[:id])
        @friend.assign_attributes(params[:friend])
        if @friend.save
            redirect_to :root
        else
            render "edit"
        end
    end

    #削除
    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
        redirect_to :root
    end

end
