require 'spec_helper'

describe User do
  describe "#full_name" do
    it "family_nameとfirst_nameを連結した文字列を返す" do
      user = User.new(family_name: "前田", first_name: "修吾")
      expect(user.full_name).to eq "前田 修吾"
    end
  end
end
