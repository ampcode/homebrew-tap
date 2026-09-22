class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790113007-gc0c797"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790113007-gc0c797/amp-darwin-arm64"
      sha256 "e17f169f713cab9e08af728a8c6958add8497e45cb30981e8383d38877371711"
    else
      url "https://static.ampcode.com/cli/0.0.1790113007-gc0c797/amp-darwin-x64"
      sha256 "91d1a2cca383a8f95e6a6caf6cd51b79ef7a872d8c16237d3675bcf2b233fb10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790113007-gc0c797/amp-linux-arm64"
      sha256 "fad45d6a75169c497ac592547ffa2ff8e4c08d84afeebc8c991d27972f4b9d3d"
    else
      url "https://static.ampcode.com/cli/0.0.1790113007-gc0c797/amp-linux-x64"
      sha256 "f064eacd10dbff3ccbb1ad2af3694d09e8ea299f4c637404a38d1623423054ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
