class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782579189-g03e27d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782579189-g03e27d/amp-darwin-arm64"
      sha256 "ee5a624e2de620359db2918e388bf3b8866f5bfc58361ec730e5978e2c42df89"
    else
      url "https://static.ampcode.com/cli/0.0.1782579189-g03e27d/amp-darwin-x64"
      sha256 "d4c6524df30a66303b31524c0601e6da22009135c3b000a4ea2af9a5c2387627"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782579189-g03e27d/amp-linux-arm64"
      sha256 "1d72be21a73b0bc9f5d02cb09df98057608d8b478add1e772e4574670ac58288"
    else
      url "https://static.ampcode.com/cli/0.0.1782579189-g03e27d/amp-linux-x64"
      sha256 "48bab50ccb86dc290e8b05e04e13e529adc5a5e71e89f187cb7174bf255a3085"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
