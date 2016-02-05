namespace :its_my_day do
  desc "Text Ethan who's day it is."
  task text: :environment do
    Texter.text_ethan
  end

end
