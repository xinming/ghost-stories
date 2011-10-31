object locals[:story]
attributes :id, :name, :story
code(:image_full){|s| s.image.thumb("320x200#").png.url if s.image}
code(:date){|s| s.created_at.strftime "%Y-%m-%d"}
code(:source){|s| s.source.scan(/http:\/\/([^\/]*)/).flatten[0] if s.source.match(/^http.*/)}