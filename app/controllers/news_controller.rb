class NewsController < ApplicationController
   
    def index 
        @news = News.order(created_at: :desc).all
        render json: @news
    end
    def new 
@news=News.new
    end
   
    def create
       
        @news = News.new(news_params)
  
       if @news.save
        render json: @news, status: :ok
        # redirect_to news_index_path
       else 
        render :new
    end
end

def edit
    @news = News.find(params[:id])
    render json: @news
  end
    
    def show
        @news = News.find(params[:id])
        render json: @news
      end

      def update
        if @news.update(news_params)
          redirect_to @news, notice: 'News was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @news.destroy
        redirect_to news_index_path, notice: 'News was successfully destroyed.'
      end
    
    private
    def news_params
        params.require(:news).permit(:tittle,:description,:category_id,:city_id,:image)
      end
end


