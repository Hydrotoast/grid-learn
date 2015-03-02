class Bilinear
  # Interpolates the values of variables with respect to the data using
  # billinear interpolation. This method interpolates between the four closest
  # points to the given `width` and `height` parameters. These four points form
  # a bounding box around the given `width` and `height` parameters.
  interpolate: (data, width, height) ->
