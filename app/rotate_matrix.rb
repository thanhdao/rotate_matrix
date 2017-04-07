module RotateMatrix
  class << self
    def rotate(matrix)
      n = matrix.size
      0.upto(n/2 - 1) do |i|
         i.upto(n - 1 - i - 1) do |j|
            temp = matrix[i][j]
            matrix[i][j] = matrix[n-1-j][i]
            matrix[n-1-j][i] = matrix[n-1-i][n-1-j]
            matrix[n-1-i][n-1-j] = matrix[j][n-1-i]
            matrix[j][n-1-i] = temp
          end
      end
      matrix
    end
  end
end