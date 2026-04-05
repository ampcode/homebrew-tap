class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775419421-g406649"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775419421-g406649/amp-darwin-arm64"
      sha256 "92f3a1adc9d7f12c55f0b723fc706e6780ab3846e9e9ad1e4823c05457aa5031"
    else
      url "https://static.ampcode.com/cli/0.0.1775419421-g406649/amp-darwin-x64"
      sha256 "3c5d1865d73cdd87473e498e97257785a27f136dbdf21712e8f4f082d1d6154f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775419421-g406649/amp-linux-arm64"
      sha256 "d281527a6557eb6a03f9a64adac78e803e811d9bdfb2ac876202d5dfd78233cc"
    else
      url "https://static.ampcode.com/cli/0.0.1775419421-g406649/amp-linux-x64"
      sha256 "4725b38670ad0daccf09b87463348f62aafe709bc3d96cd59276ddabef7e8f19"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
