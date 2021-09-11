require "digest"

service   = ARGV[0]
token_one = ARGV[1]
token_two = "pufferfish" # some constant word

if ARGV[2]
	token_two = ARGV[2]
end

full_string = service + token_one + token_two
chash = Digest::SHA256.hexdigest full_string

if ARGV[3]
	num = ARGV[3].to_i - 1
	puts chash[0..num]
else
	puts chash
end
