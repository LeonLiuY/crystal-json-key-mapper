require "./spec_helper"

class Test
  JSON.mapping(
    name: String,
    name_underscore: String
  )

  def initialize(@name, @name_underscore)
  end

  def_equals_and_hash @name, @name_underscore
end

describe Crystal::Json::Key::Mapper do
  # TODO: Write tests

  it "works" do
    Test.new("v1", "v2").to_json.should eq "{\"name\":\"v1\",\"nameUnderscore\":\"v2\"}"
    Test.from_json("{\"name\":\"v1\",\"nameUnderscore\":\"v2\"}").should eq Test.new("v1", "v2")
  end
end
