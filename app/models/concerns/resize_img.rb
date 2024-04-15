module ResizeImg
  def resize_img (pic, size)
    pic.variant(resize_to_limit: [size, size]).processed
  end
end
