grid-learn
==========

A system for learning a model of dynamic collinear variables from the Cassowary
linear constraint solver.

Usage
-----

This system is able to learn a set of dynamic constraints relative to a
aprameter set.

```coffeescript
constraints = [
  {parameters: {w: [0, 32], h: [0, 32]}, constraints: []}
  {parameters: {w: [32, 64], h: [32, 64]}, constraints: []}
]
learner = new GridLearn new NearestNeighborPredictor()
predictor = learner.fit constraints
values = predictor.predict window.innerWidth, window.innerHeight
```

Explicit Formulas
-----------------

```coffeescript
learner = new GridLearn new NearestNeighborPredictor()
predictor = learner.fit constraints
formulas = predictor.formulas
// y = 50 * w * x
// z = 100 * h + x
```

For optimized formulas, use `predictor.optimized_formulas`. By optimized, we
mean smaller equations.

Prediction Strategies
---------------------

The available prediction strategies are as follows:

**Nearest Neighbor**

The predicted variables will take on the values of the closest learned sample
to the width and height parameters.

**Bilinear Interpolation**

The predicted variables will interpolate between the closest four samples to
the width and height parameters.
