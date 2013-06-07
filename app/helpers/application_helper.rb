module ApplicationHelper
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end 

  def youtube_video_thumb(url)
    render :partial => 'shared/video_thumb', :locals => { :url => url }
  end 
end

def youtube_embed(youtube_url)
  if youtube_url[/youtu\.be\/([^\?]*)/]
    youtube_id = $1
  else
    # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
    youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
    youtube_id = $5
  end

  # %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
  %Q{<iframe title="YouTube Player" width="640" height="390" src="http://www.youtube.com/v/#{ youtube_id }&enablejsapi=1&playerapiid=ytplayer/" frameborder="0" allowfullscreen></iframe>}
end

module TagsHelper 
  def show_tags(tags)
    render :partial => 'shared/tags', locals => { :tags => tags}
  end
end

