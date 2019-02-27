require './lib/enigma'
enigma = Enigma.new
reader_file = ARGV[0]
writer_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]
reader_file = File.open(reader_file, "r")
message = reader_file.read.chomp
reader_file.close
msg_decrypted = enigma.decrypt(message, key, date)
writer_file = File.open(writer_file, "w")
writer_file.write(msg_decrypted[:decryption])
writer_file.close
puts "Created #{writer_file} with the key #{msg_decrypted[:key]} and the date #{msg_decrypted[:date]}."
