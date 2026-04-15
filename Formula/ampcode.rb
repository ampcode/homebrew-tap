class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776230495-g88dbda"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776230495-g88dbda/amp-darwin-arm64"
      sha256 "708f719587c39c6d9aaff5a7098c2177b497c9ad365a467d7763acc87445df3a"
    else
      url "https://static.ampcode.com/cli/0.0.1776230495-g88dbda/amp-darwin-x64"
      sha256 "5344c3d3a0438af5a768227527ec2f7d544c4324255385f368a4e8c8c8998c48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776230495-g88dbda/amp-linux-arm64"
      sha256 "713396d7d1c55f313db7143fac8ae1a2866366210822742061add8c0b75b544a"
    else
      url "https://static.ampcode.com/cli/0.0.1776230495-g88dbda/amp-linux-x64"
      sha256 "a8a02d1c37a67b35b97553ec05717b6ae08b6054af554444e176d6277eb5f151"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
