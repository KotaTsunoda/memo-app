class MemosController < ApplicationController
    def index
    #トップページにアクセスされた時のアクション
    end

    def new
    #新規作成ページにアクセスされた時のアクション
    end
    
    def create
    #メモが新規作成ページからpostされた時のアクション
        render plain: params["memos"]["title"] + ":" +params["memos"]["body"] 
    end
end
