class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776536566-gf85e3a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776536566-gf85e3a/amp-darwin-arm64"
      sha256 "18beef8b2d320efd6660b0b2749b425f4e91435ee6902d68064e732915e56e34"
    else
      url "https://static.ampcode.com/cli/0.0.1776536566-gf85e3a/amp-darwin-x64"
      sha256 "5a2d36a08cf9c7d7ac3c279a71e158dd4405ec486c67ed3228f48426ac8b813f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776536566-gf85e3a/amp-linux-arm64"
      sha256 "b1a88407286eeb03dc9e6f4118bb282a2b3338724ef0d83fff39a980e6617425"
    else
      url "https://static.ampcode.com/cli/0.0.1776536566-gf85e3a/amp-linux-x64"
      sha256 "c27b5d03553dd5e8e35ef8082241dda4e299af1dc8ca15406192a3da36477b62"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
