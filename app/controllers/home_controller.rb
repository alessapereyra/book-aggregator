class HomeController < ApplicationController
  def index
    @bookstores = [Amazon,Mondadori,Overdrive,BarnesAndNoble,KoboBooks,Wheelers,TheGreatBritishBookShop,Bol,RMBooks,Ebrary,Ebooks,Feedbooks,BookPeople,FNAC,ElCorteIngles,CasaDelLibro,Flipside,AsiaBooks,Litres,PeruBookStore,Gandhi,Livria,Saraiva,Grammata,TodoEbook]
  end

  def search
    #BookShout,TheCopia,Indigo,Chegg,BakerAndTaylor, Sainsbury, fnac (POST), skoobe (menu JS), readcloud (POST), Leer-e
    #Scribd ? Gardners (need ISBN)
    #Amazon,Mondadori,Overdrive,BarnesAndNoble,KokoBooks,Wheelers,TheGreatBritishBookShop,Bol,RMBooks,Ebrary,Ebooks,Feedbooks,BookPeople,FNAC,ElCorteIngles,CasaDelLibro,Flipside,AsiaBooks,Litres,PeruBookStore,Gandhi,Livria,Saraiva,Grammata
    @bookstores = [Amazon,Mondadori,Overdrive,BarnesAndNoble,KoboBooks,Wheelers,TheGreatBritishBookShop,Bol,RMBooks,Ebrary,Ebooks,Feedbooks,BookPeople,FNAC,ElCorteIngles,CasaDelLibro,Flipside,AsiaBooks,Litres,PeruBookStore,Gandhi,Livria,Saraiva,Grammata,TodoEbook]
    #@bookstores = [Overdrive,KokoBooks,Wheelers]
    render :index
  end

  def filter
    @klass = params[:store].constantize.new(params[:terms])
    @content = @klass.render
  end
end