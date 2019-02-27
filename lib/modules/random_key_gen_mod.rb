module RandomKey
  def random_key
    key = ""
    sample = Random.new.rand(0..99999)
    sample = sample.to_s.rjust(5, "0")
  end
end
