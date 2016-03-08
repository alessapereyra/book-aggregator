class HomeController < ApplicationController
  
  SUPPORTED_BOOKSTORES = [Amazon, AmazonMX, AmazonES, Mondadori, Overdrive, BarnesAndNoble, KoboBooks, Wheelers, TheGreatBritishBookShop, Bol, RMBooks, Ebrary, Ebooks, Feedbooks, BookPeople, FNAC, ElCorteIngles, CasaDelLibro, Flipside, AsiaBooks, Litres, PeruBookStore, Gandhi, Livria, Saraiva, Grammata, TodoEbook]
  #SUPPORTED_BOOKSTORES = [AmazonMX]
  
  def index
    @bookstores = SUPPORTED_BOOKSTORES
  end

  def search
    @bookstores = SUPPORTED_BOOKSTORES
    render :index
  end

  def filter
    @klass = params[:store].constantize.new(params[:terms])
    @content = @klass.render
  end
end

#BookShout,TheCopia,Indigo,Chegg,BakerAndTaylor, Sainsbury, fnac (POST), skoobe (menu JS), readcloud (POST), Leer-e
#Scribd ? Gardners (need ISBN)
#Amazon,Mondadori,Overdrive,BarnesAndNoble,KokoBooks,Wheelers,TheGreatBritishBookShop,Bol,RMBooks,Ebrary,Ebooks,Feedbooks,BookPeople,FNAC,ElCorteIngles,CasaDelLibro,Flipside,AsiaBooks,Litres,PeruBookStore,Gandhi,Livria,Saraiva,Grammata