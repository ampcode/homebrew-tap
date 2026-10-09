class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791504095-g229e99"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791504095-g229e99/amp-darwin-arm64"
      sha256 "8f4f40bb1d61120a6e5f7f5a72e6d3ad2c0d78f4d8e91e580cc822141ad610c9"
    else
      url "https://static.ampcode.com/cli/0.0.1791504095-g229e99/amp-darwin-x64"
      sha256 "55a1df1bbec42f7d3e8e1466038a6e1786168cf3a06245c783fbd43f23608d37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791504095-g229e99/amp-linux-arm64"
      sha256 "26cc5ca49b897adfdef63bbcdd917389a866c8b53b2b21b791aeca8357e27418"
    else
      url "https://static.ampcode.com/cli/0.0.1791504095-g229e99/amp-linux-x64"
      sha256 "d896b39c5a47844b9f4378ed121f3a69c7323f9b049ac3749fa45fafc5b6d1a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
