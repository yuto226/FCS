=begin
  specification
  name = オリジンのcontroler
  function = 全てのcontrolerはApplicationControllerを継承。
  note = none
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = none
  output = none
  end of specification
=end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
