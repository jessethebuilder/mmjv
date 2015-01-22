module ImgsHelper
  def img_list(imgs, version: :thumb)
    render :partial => 'imgs/image_list', :locals => {:imgs => imgs, :version => version}
  end
end