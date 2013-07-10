class ValidHandle

	def initialize(tname)
		@tname = tname
	end

	def rem_leading_at
		if /^@/ =~ @tname
			@tname[0] = ''

			puts @tname
		end
	end

	def is_valid
		#check if it is a real twitter name
	end

end


