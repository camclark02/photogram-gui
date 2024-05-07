class PhotosController < ApplicationController
  def index
    render({ :templates => "photo_templates/index" })
  end
end
