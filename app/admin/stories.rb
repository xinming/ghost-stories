# encoding: utf-8
ActiveAdmin.register Story do
  form do |f|
    f.inputs do
      f.input :name
      f.input :genre
      f.input :source, :label => "ที่มา (URL)"
      f.input :writer, :label => "นักเขียน"
      f.input :story
    end
    
  end
  
  index do 
    column :name
    column :genre
    column :writer
    default_actions
  end
end
