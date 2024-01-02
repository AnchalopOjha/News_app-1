class NewsController < ApplicationController
   
    def index 
        @news = News.order(created_at: :desc).all

    end
    def new 
@news=News.new
    end
   
    def create
       
        @news = News.new(news_params)
       if @news.save
        redirect_to news_index_path
       else 
        render :new
    end
end
    
    def show
        @news = News.find(params[:id])
      end
    
    private
    def news_params
        params.require(:news).permit(:tittle,:description,:category_id,:city_id,:image)
      end
end


