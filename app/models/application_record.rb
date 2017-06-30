=begin
  specification
  name = オリジンのmodel
  function = 全てのmodelの継承元。
  note = 全てのモデルはApplicationRecordを継承。
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = none
  output = none
  end of specification
=end

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
