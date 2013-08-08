#//GameInfo.java - three of three concrete Visitees
require "AbstractTitleInfo"

class GameInfo < AbstractTitleInfo
	def initialize(titleName) 		super(GameInfo,self).__init__(titleName)

	def accept(titleBlurbVisitor) 		 titleBlurbVisitor.visit(self)
