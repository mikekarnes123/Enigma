module TimeMod
  def current_date
    time = Time.new
    time = time.strftime("%d%m%y")
  end
end
