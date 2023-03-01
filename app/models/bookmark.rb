# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord
  def movie
    the_id = self.movie_id
    return Movie.all.where(:id => the_id).first
  end


end
