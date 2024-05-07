class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index" })
  end

  def show
    #Parameters: {"username"=>"2"}
    url_photo = params.fetch("id")
    matching_photos = Photo.where({ :id => url_photo })

    @the_photo = matching_photos.at(0)
    render({ :template => "photo_templates/show" })
  end
end
