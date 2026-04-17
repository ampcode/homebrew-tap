class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776456655-gb917b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776456655-gb917b0/amp-darwin-arm64"
      sha256 "8cba35c6f6c49bf2f24b29207f7b0cb5fbcd242e5e31091c5c36d75b9e52768e"
    else
      url "https://static.ampcode.com/cli/0.0.1776456655-gb917b0/amp-darwin-x64"
      sha256 "7faf18dc930c36fb6705d87e21c280b3fc81d7a0c1193be54c848db653dc7045"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776456655-gb917b0/amp-linux-arm64"
      sha256 "4bf3884c40ef96b1dca3ff1c99bd633c58221d8a78f51fddb255304a8d5c4d33"
    else
      url "https://static.ampcode.com/cli/0.0.1776456655-gb917b0/amp-linux-x64"
      sha256 "9d61a8b5b84d0b2ed1eb039e2355468559ed40ff4c6e3d15f8a928da6ce8ed83"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
