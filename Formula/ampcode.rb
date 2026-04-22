class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776882341-gbc4d06"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776882341-gbc4d06/amp-darwin-arm64"
      sha256 "91d072728de03b754287f3dc4d4d321d235919d51ad4961b4e7822ee726ea1a7"
    else
      url "https://static.ampcode.com/cli/0.0.1776882341-gbc4d06/amp-darwin-x64"
      sha256 "702d43506ae039c3d3283beac2d81ccefb57920afe2fdf55d5c22421d6afe6db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776882341-gbc4d06/amp-linux-arm64"
      sha256 "e9cd5580740e58a1b6573c2ae40c174880adaea8c33cbe1c663209069428ca4d"
    else
      url "https://static.ampcode.com/cli/0.0.1776882341-gbc4d06/amp-linux-x64"
      sha256 "d5d2a8012d66537d9d55fd35a5eddcf13b6621d8be4e8190d9e716c823a923d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
