# encoding: utf-8
ActiveAdmin.register Story do
  form :html => {:multipart =>true} do |f|
    f.inputs do
      f.input :name
      f.input :source, :label => "ที่มา (URL)"
      f.input :writer, :label => "นักเขียน"
      f.input :story
      f.inputs "Content" do
        f.input :image, :as => :file
      end
    end
    f.buttons
  end
  
  
  index do 
    column("image") do |s|
      image_tag s.image.thumb('120x120').url if s.image
    end    
    column :name
    column :writer
    column 
    default_actions
  end
end
