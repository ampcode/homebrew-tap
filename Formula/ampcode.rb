class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776434584-g41bff8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776434584-g41bff8/amp-darwin-arm64"
      sha256 "d85467663b74418800c94c537e2d93955a47bb96c403cd7ce6d110b13f16c44c"
    else
      url "https://static.ampcode.com/cli/0.0.1776434584-g41bff8/amp-darwin-x64"
      sha256 "e1f7a992a05aebbb1eb1b240aee2a0db28b228c5229723e020a851656c1f3408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776434584-g41bff8/amp-linux-arm64"
      sha256 "002e603402585042698fff87b2d2b0ee5c703279bbbda6ea299f01001111c4a3"
    else
      url "https://static.ampcode.com/cli/0.0.1776434584-g41bff8/amp-linux-x64"
      sha256 "dc44b4da228e651ea0382f8279756ac22fd03a8a88188193a31274f388009210"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
