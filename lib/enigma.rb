require_relative './modules/random_key_gen_mod'
require_relative './modules/time_mod'
require_relative './modules/shifts_mod'

class Enigma
  include TimeMod
  include RandomKey
  include ShiftsMod
  attr_reader :message,
  :key,
  :date
  def initialize
    # @message = message
    @key = ''
    @date = current_date
  end

  def encrypt(message, key = random_key, date = @date)
    @key = key
    @date = date
    date_shift = (@date.to_i * @date.to_i).to_s
    sliced = []
    encrypted = ""
    message.split('').each_slice(4) {|slice| sliced << slice}
    sliced.each do |slice|
      slice = [a_shift(slice[0], date_shift, "forward"), b_shift(slice[1], date_shift, "forward"), c_shift(slice[2],date_shift, "forward"), d_shift(slice[3],date_shift, "forward")].join
      encrypted = encrypted + slice
    end
    {encryption: encrypted, key: key, date: date}
  end

  def decrypt(message, key = @key, date = @date)
    @key = key
    @date = date
    date_shift = (@date.to_i * @date.to_i).to_s
    sliced = []
    decrypted = ""
    message.split('').each_slice(4) {|slice| sliced << slice}
    sliced.each do |slice|
      slice = [a_shift(slice[0], date_shift, "backward"), b_shift(slice[1], date_shift, "backward"), c_shift(slice[2],date_shift, "backward"), d_shift(slice[3],date_shift, "backward")].join
      decrypted = decrypted + slice
    end
    {decryption: decrypted, key: key, date: date}
  end

end
