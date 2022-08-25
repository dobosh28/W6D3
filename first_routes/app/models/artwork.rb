# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :image_url, :title, presence: true, uniqueness: true
    validates :artist_id, uniqueness: true

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artworks_share,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_viewers,
        through: :artworks_share,
        source: :viewer

end
