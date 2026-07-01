class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782885754-g11770c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782885754-g11770c/amp-darwin-arm64"
      sha256 "b99c2eac142a375f00756fb705172a92a57f7c3b6110a2baa2470ad5ff032e5d"
    else
      url "https://static.ampcode.com/cli/0.0.1782885754-g11770c/amp-darwin-x64"
      sha256 "d0b90e0b22942f6ac44b58cd9c719bf15dfcea5f074b916f4b58db364b9c5865"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782885754-g11770c/amp-linux-arm64"
      sha256 "d6c74daf8c3420907d84e9f43d4d3958135f516dfa7034eeae435b1db887ed3d"
    else
      url "https://static.ampcode.com/cli/0.0.1782885754-g11770c/amp-linux-x64"
      sha256 "c66e2dda2167de43653aba5ff0183f9ee7e177b89dfb13b78e4ce2448dccd98c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
