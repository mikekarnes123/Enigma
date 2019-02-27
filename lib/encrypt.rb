require './lib/enigma'
enigma = Enigma.new
key = "82648"
date = "240818"
reader_file = ARGV[0]
writer_file = ARGV[1]
reader_file = File.open(reader_file, "r")
writer_file = File.open(writer_file, "w")
message = reader_file.read.chomp.downcase
reader_file.close
msg_encrypred = enigma.encrypt(message, key, date)
writer_file.write(msg_encrypred[:encryption])
writer_file.close
puts "Created #{writer_file} with the key #{msg_encrypred[:key]} and date: #{msg_encrypred[:date]}."
