BEGIN{
	#$ip="i am a inbuild variable"
	class First
		Ab=123
		$ip="i am a global variable"
		def hu
			puts @a
			#Ab=123
			print "hello #{Ab}"
		end
		
		def ii
			print @b
		end
		
		def iii
			print @c
		end
		
		def initialize(a,b,c)
			@a=a
			@b=b
			@c=c
		end
	end
}

hu=First.new(1,2,3)

puts hu.hu

puts hu.ii

puts hu.iii

puts $ip

$io="outer local variable"
puts $io


=begin
MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant
=end



for e in 0..6
	puts "#{e}"
end

(0..5).each do |i|
	print i
end






















