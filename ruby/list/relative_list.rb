class TodoList

	def initialize(list)
		@list = listend
	end

	def get_items
		@listend
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(p)
		@list[p]
	end
		
end