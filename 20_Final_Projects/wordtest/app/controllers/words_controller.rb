class WordsController < ApplicationController

def index
	@word = Word.new
  @words = Word.all
end

def create

  @word = Word.new permitted_attributes
  if @word.save
    redirect_to word_path
  else
    render 'index'
  end
end

def show

end


def permitted_attributes
  params.require(:word).permit(:search_term)
end

end
