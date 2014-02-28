class Draft < ActiveRecord::Base

  has_attached_file :file,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {}
end
