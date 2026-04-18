class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776542811-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776542811-g13eef6/amp-darwin-arm64"
      sha256 "9a015c9e232e3c225107fd260e37b7af0b216698f68a3d9f1fc40a170ef20781"
    else
      url "https://static.ampcode.com/cli/0.0.1776542811-g13eef6/amp-darwin-x64"
      sha256 "3092040c23fcedb89e0ed9ed43fd0ab81c2c9cf4303e749f209067f47d3acd2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776542811-g13eef6/amp-linux-arm64"
      sha256 "ed572ba699404444d2874fa87c559de81381bec1f8ba9eda5cadb75113b14c8f"
    else
      url "https://static.ampcode.com/cli/0.0.1776542811-g13eef6/amp-linux-x64"
      sha256 "0d0e3c99c3e153e2e2c99b964f3d332eca1d00a65bb1eac943479a738e189e82"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
