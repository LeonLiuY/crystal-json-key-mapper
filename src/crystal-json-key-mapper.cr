require "./crystal-json-key-mapper/*"



class JSON::Builder
  # Writes an object's field and value.
  # The field's name is first converted to a `String` by invoking
  # `to_s` on it.
  def field(name, value)
    name = name.camelcase
    name = name[0].downcase + name.lchop
    string(name)
    value.to_json(self)
  end

  # Writes an object's field and then invokes the block.
  # This is equivalent of invoking `string(value)` and then
  # invoking the block.
  def field(name)
    name = name.camelcase
    name = name[0].downcase + name.lchop
    string(name)
    yield
  end
end

class JSON::PullParser
  def read_object_key
    read_string.underscore
  end
end
