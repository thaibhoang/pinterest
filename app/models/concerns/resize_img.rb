# This module provide method for resizing image to fit or to fill a container with size1 and size2
module ResizeImg
  def resize_img(pic, size1, size2)
    pic.variant(resize_to_fit: [size1, size2]).processed
  end

  def resize_fill_img(pic, size1, size2)
    pic.variant(resize_to_fill: [size1, size2]).processed
  end
end
