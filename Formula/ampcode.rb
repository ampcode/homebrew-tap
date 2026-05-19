class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779222574-g8bb401"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779222574-g8bb401/amp-darwin-arm64"
      sha256 "d6295285964b2fdff7f1c0734eaba6fb44d40a4543f794205cd00d019f418a78"
    else
      url "https://static.ampcode.com/cli/0.0.1779222574-g8bb401/amp-darwin-x64"
      sha256 "e0c0ed3c586ae7e2c5be4fced40dcc4783b293822cce7d2fa3ddf3084cc5ed37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779222574-g8bb401/amp-linux-arm64"
      sha256 "76851ee4c3b335a6af82622d89af0f8856c21a526a26afd99595571b27b23a36"
    else
      url "https://static.ampcode.com/cli/0.0.1779222574-g8bb401/amp-linux-x64"
      sha256 "79f77ad551c5fb9ea94521eb77a7921fd0098db8b91e080b390dd6a03fffb949"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
