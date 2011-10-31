collection locals[:stories]
attributes :id, :name, :source
code(:image_thumb){|s| s.image.thumb("74x74#").png.url}
code(:story_snippet){|s| s.story.to_s.mb_chars[0,40].to_s}