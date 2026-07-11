class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783743706-g417aa5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783743706-g417aa5/amp-darwin-arm64"
      sha256 "bce62ee8ca98599eca3689c5feb2f59d61b84a58a77e1e9b604f3ca6dbc705d4"
    else
      url "https://static.ampcode.com/cli/0.0.1783743706-g417aa5/amp-darwin-x64"
      sha256 "81bf79adc3e8e39751b60de2c50233d23438812a05aa153a184e686ece475216"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783743706-g417aa5/amp-linux-arm64"
      sha256 "ac4ed09d6effc94ec4e76a79f165f1c422b409c45328f672769f232770123ee8"
    else
      url "https://static.ampcode.com/cli/0.0.1783743706-g417aa5/amp-linux-x64"
      sha256 "e021dcc9b9fb23e67ca0e04d0f6f23575cbf560031da453abcbbcb8d8c892e95"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
