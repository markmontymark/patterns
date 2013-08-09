#//TitleBlurbVisitor - the abstract Visitor
class TitleBlurbVisitor

	attr_accessor :titleBlurb

	def setTitleBlurb (blurbIn)
 		@titleBlurb = blurbIn
	end

	def getTitleBlurb ()
		return @titleBlurb
	end

	def visit (info)
 		raise "Unimplemented method TitleBlurbVisitor.visit"
	end
end
