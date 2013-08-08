#//TitleBlurbVisitor - the abstract Visitor
class TitleBlurbVisitor

	def setTitleBlurb (blurbIn)
 		@titleBlurb = blurbIn
	end

	def getTitleBlurb ()
		return @titleBlurb
	end

	def visit (info)
 		raise Exception("Unimplemented method TitleBlurbVisitor.visit")
	end
end
