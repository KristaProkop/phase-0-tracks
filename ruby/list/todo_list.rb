# Testing rubocop: fixing found offenses

# Class documentation comment
class TodoList
  def initialize(list)
    @list = list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def retrieve_item(index)
    @list[index]
  end

  def retrieve_items
    @list
  end
end

# list = TodoList.new
# list.get_items
