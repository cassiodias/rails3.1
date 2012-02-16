require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "validates presence of name" do
      client = Client.new name: nil
      assert ! client.valid?, "message: client should be invalid"
      assert client.errors[:name].any?
  end
    
  test "validates presence of email" do
      client = Client.new email: nil
      assert ! client.valid?, "message: email should be invalid"
      assert client.errors[:email].any?
  end

  test "validates format of email" do
      client = Client.new email: "dddd"
      assert ! client.valid?, "message: email format invalid"
      assert client.errors[:email].any?
  end
    
end
