class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792814442-g8ccdc4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792814442-g8ccdc4/amp-darwin-arm64"
      sha256 "db6b571d60284b90ef549a5c11d637f8f7390a840d240912a183e405bc5004d3"
    else
      url "https://static.ampcode.com/cli/0.0.1792814442-g8ccdc4/amp-darwin-x64"
      sha256 "6f0b7727dfc9de015543a0cea3a237a3c15ca07a5febdc4e72a56759122309b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792814442-g8ccdc4/amp-linux-arm64"
      sha256 "0c0a7350d908ff9b873c47f256d69808efde26e85089942df2e580cdf82bbaf8"
    else
      url "https://static.ampcode.com/cli/0.0.1792814442-g8ccdc4/amp-linux-x64"
      sha256 "f52bcdbad95cd4aa9e6b1f2dfa40b05aad4bfb99583829b210cd726d8f886281"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
