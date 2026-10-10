class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791604937-g4bfc2d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791604937-g4bfc2d/amp-darwin-arm64"
      sha256 "93cfab2cbfce702c9d9f103180df48d26135cda02528c5b3173cd08dee81cc90"
    else
      url "https://static.ampcode.com/cli/0.0.1791604937-g4bfc2d/amp-darwin-x64"
      sha256 "a8270964c7a6764ff77edb9f94e39f3f45edd852531f31149e3a0eeb022a0ec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791604937-g4bfc2d/amp-linux-arm64"
      sha256 "2d08550c15f551a504c9f115ae37f004c4e198d6deb873355d6ef7e0ced9f9ba"
    else
      url "https://static.ampcode.com/cli/0.0.1791604937-g4bfc2d/amp-linux-x64"
      sha256 "055bda96f4ff2d99ed58a7a3c7a66a40bddfd6ddf24585eeeb0b01ca9f47e795"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
