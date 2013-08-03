require "matrix"

module Measurable

  ##
  # http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient#Pearson.E2.80.99s_distance
  def pearson(u, v)
    # TODO: Change this to a more specific, custom-made exception.
    raise ArgumentError if u.size != v.size
    (1.0 - Vector.elements(u).normalize.inner_product(Vector.elements(v).normalize))/2.0
  end
end