class HomesController < ApplicationController

  def top
  end

  def home
    require "date"
    # 今日の日付のDateクラスのオブジェクトを作成する
    today = Date.today
    # 昨日の日付のdateクラスのオブジェクトを作成する
    yesterday = today - 1
    # 今日の日付と同じ日付を持っているレコードを扱うDatumクラスのインスタンスを生成する
    @datum_today = Datum.find_by(date: today)
    # 昨日の日付と同じ日付を持っているレコードを扱うDatumクラスのインスタンスを生成する
    @datum_yesterday = Datum.find_by(date: yesterday)
  end

end
