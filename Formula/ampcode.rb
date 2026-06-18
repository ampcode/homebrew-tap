class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781819684-g8395da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781819684-g8395da/amp-darwin-arm64"
      sha256 "ac92b7a929c295c4497bbfc76ce67da4e02e403ea010cf2c8c69d9cb0864e0ee"
    else
      url "https://static.ampcode.com/cli/0.0.1781819684-g8395da/amp-darwin-x64"
      sha256 "c9700b7f8ab9271b52693aac6bf7db4c3ec4d95bf6e9e6089763253d5f1f5543"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781819684-g8395da/amp-linux-arm64"
      sha256 "b00cd782496cb7cad8c5c91127d960f94944eaab12e39849e25e05cf9fda4a1f"
    else
      url "https://static.ampcode.com/cli/0.0.1781819684-g8395da/amp-linux-x64"
      sha256 "8696ec19d19a0a18df9e3965eb4666f82495fa784ccffb91a138a53c4eaefcc3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
