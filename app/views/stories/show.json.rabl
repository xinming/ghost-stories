object locals[:story]
attributes :id, :name, :source, :story
code(:image_full){|s| s.image.thumb("320x200#").png.url if s.image}
code(:date){|s| s.created_at.strftime "%Y-%m-%d"}