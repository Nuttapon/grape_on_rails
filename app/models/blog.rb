class Blog < ActiveRecord::Base

  def convert_title
    title.upcase
  end

end
