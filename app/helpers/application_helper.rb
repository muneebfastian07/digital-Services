module ApplicationHelper
	def find_section(default_name)
		section = HomeSection.find_by_default_name(default_name)
		return section
		
	end
end
