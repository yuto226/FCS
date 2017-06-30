=begin
  specification
  name = テーブル番号のmodel
  function = テーブル情報を静的に保存。
  note = none
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = 取得したいデータのパラメータ。
  output = テーブル番号に関するオブジェクト。
  end of specification
=end

class TableNumber < ApplicationRecord
  #多対一のリレーションを定義
  has_many :order_statuses, dependent: :destroy
end
