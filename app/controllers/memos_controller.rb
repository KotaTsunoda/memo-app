class MemosController < ApplicationController
    def index
    #トップページにアクセスされた時のアクション
        @memos = Memo.all
    end

    def new
    #新規作成ページにアクセスされた時のアクション
    end
    
    def create
    #メモが新規作成ページからpostされた時のアクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
        redirect_to "/"
        #render plain: params["memos"]["title"] + ":" +params["memos"]["body"] 
    end
end
