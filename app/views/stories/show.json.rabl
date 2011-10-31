object locals[:story]
attributes :id, :name, :source, :story
code(:image_full){|s| s.image.thumb("320x200#").png.url}