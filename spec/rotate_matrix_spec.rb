require 'rspec'
require_relative '../app/rotate_matrix'

describe RotateMatrix do
  before do
    @matrix  = [[1,2,3,4],
               [5,6,7,8],
               [9,10,11,12],
              [13,14,15,16]]
    @rotated_matrix = [[13,9,5,1],
                      [14,10,6,2],
                      [15,11,7,3],
                      [16,12,8,4]]
  end
  it 'rotate matrix 90 degree right' do
    expect(RotateMatrix.rotate(@matrix)).to eq(@rotated_matrix)
  end
end