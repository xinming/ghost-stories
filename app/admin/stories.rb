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
end
