class Song < ActiveRecord::Base
<<<<<<< HEAD
  validates :title, presence: true
  validates :title, uniqueness: {
   scope: [:artist_name, :release_year],
   message: "cannot be repeated by the same artist in the same year"
  }

  validates :released, inclusion: { in: [true, false] }
  validates :artist_name, presence: true
  validates :release_year, presence: true, if: :released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if: :released?

  def released?
    released
  end
=======

  validates :title, presence: true
  validates :title, uniqueness: {
    scope: [:artist_name, :release_year],
    message: "cannot be repeated by the same artist in the same year"
  }

  validates :released, inclusion: { i[:true, false] }
  validates :artist_name, presence: true
  validates :reaease_year, presence: true, if: :released?
  validates :release_year, numericality: { less_thanor_equal_to: Date.today.year }, if: :released?

def released?
  released
end
>>>>>>> 97954ae29801b4dc28caeeb041aabd0453b4fc31

end
