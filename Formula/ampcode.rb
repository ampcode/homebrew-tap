class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776574633-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776574633-g13eef6/amp-darwin-arm64"
      sha256 "184d9a11ea4c031f180dbc79af101aff305f6ee28f1532945ff8bf8a82b1206a"
    else
      url "https://static.ampcode.com/cli/0.0.1776574633-g13eef6/amp-darwin-x64"
      sha256 "b6699029fe6dd97bb8841d59abb23ac7cc21ff36eff8d6d4bf0febe558323ae9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776574633-g13eef6/amp-linux-arm64"
      sha256 "7b9981b238c9853d80ec32eef1e996df17a8d0f31a0704857b264cdd1a9e4003"
    else
      url "https://static.ampcode.com/cli/0.0.1776574633-g13eef6/amp-linux-x64"
      sha256 "9f282dbe018035f1931014b9b3c62591ed1aaf735cc751bec1e61cede12b44e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
