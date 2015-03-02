class Predictor
  constructor: (@interpolation, @data) ->

  # Predicts the values of the variables given a width and height
  predict: (width, height) -> @interpolation.interpolate(@data, width, height)

  # Returns the explicit formulas learned from the dynamic constraint set
  formulas: ->

  # Returns the optimized form of the explicit formulas learned from the
  # dynamic constrained set
  optimized_formulas: ->
