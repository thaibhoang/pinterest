module ResizeImg
  def resize_img (pic, size1, size2)
    pic.variant(resize_to_limit: [size1, size2]).processed
  end
end
