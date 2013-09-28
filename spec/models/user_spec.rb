require 'spec_helper'

describe User do
  describe "#full_name" do
    it "family_nameとfirst_nameを連結した文字列を返す" do
      user = User.new(family_name: "前田", first_name: "修吾")
      expect(user.full_name).to eq "前田 修吾"
    end

    it "family_nameが空文字列のとき、first_nameを返す" do
      user = User.new(family_name: "", first_name: "修吾")
      expect(user.full_name).to eq "修吾"
    end

    it "family_nameがnilのとき、first_nameを返す" do
      user = User.new(first_name: "修吾")
      expect(user.full_name).to eq "修吾"
    end

    it "first_nameが空文字列のとき、RuntimeErrorを上げる" do
      user = User.new(family_name: "前田", first_name: "")
      expect { user.full_name }.to raise_error(RuntimeError)
    end

    it "first_nameがnilのとき、RuntimeErrorを上げる" do
      user = User.new(family_name: "前田")
      expect { user.full_name }.to raise_error(RuntimeError)
    end
  end
end
