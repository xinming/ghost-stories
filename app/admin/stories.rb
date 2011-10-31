# encoding: utf-8
ActiveAdmin.register Story do
  form do |f|
    f.inputs do
      f.input :name
      f.input :source, :label => "ที่มา (URL)"
      f.input :writer, :label => "นักเขียน"
      f.input :story
    end
    f.buttons
  end
  
  index do 
    column :name
    column :writer
    default_actions
  end
end
