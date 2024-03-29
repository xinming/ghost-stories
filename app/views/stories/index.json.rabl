collection locals[:stories]
attributes :id, :name
code(:image_thumb){|s| s.image.thumb("74x74#").png.url if s.image}
code(:story_snippet){|s| s.story.to_s.mb_chars[0,40].to_s}
code(:date){|s| s.created_at.strftime "%Y-%m-%d"}
code(:source){|s| s.source.scan(/http:\/\/([^\/]*)/).flatten[0] if s.source.match(/^http.*/)}