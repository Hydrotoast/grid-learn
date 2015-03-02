class GridLearn
  constructor: (@inpterpolation) ->

  # Fits the data to a model for prediction
  fit: (data) -> new Predictor(@interpolation, data)
