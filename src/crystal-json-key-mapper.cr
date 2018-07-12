require "./crystal-json-key-mapper/*"

class JSON::Builder
  def field(name, value)
    name = name.camelcase
    name = name[0].downcase + name.lchop
    string(name)
    value.to_json(self)
  end

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
