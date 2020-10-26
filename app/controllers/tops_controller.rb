class TopsController < ApplicationController

  def home
  
  end

  def top
    @xlsx = Roo::OpenOffice.new('./word/toeic2000.ods')
    @xlsx.default_sheet = @xlsx.sheets[0]
    @lines = Fileloader.get_lines
  end

  def quiz
    gon.questions = Quiz.generate
  end

  def kakutan
    gon.words = Word.generate
    # binding.pry
  end

end
