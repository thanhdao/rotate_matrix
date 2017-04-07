module RotateMatrix

  class << self
    def rotate(matrix)
      n = matrix.size
      rotated_matrix = Array.new(n){Array.new(n)}
      0.upto(n - 1) do |i|
         0.upto(n - 1) do |j|
            rotated_matrix[j][n - 1 - i] = matrix[i][j]
          end
      end
      rotated_matrix
    end
  end
end