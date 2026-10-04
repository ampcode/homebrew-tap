class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791074829-g91b9e0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791074829-g91b9e0/amp-darwin-arm64"
      sha256 "2f9016e0bee3e450b3f921dbb66552685c032d3f895d3150468b71b09bf5c551"
    else
      url "https://static.ampcode.com/cli/0.0.1791074829-g91b9e0/amp-darwin-x64"
      sha256 "d1158fc68420125426fc712f8360eb899dff1d717237d08483f06d56e1e524c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791074829-g91b9e0/amp-linux-arm64"
      sha256 "52f8a5832223083923c7e4fd199cf6c9420111aa968a06987cc64d7be77f0230"
    else
      url "https://static.ampcode.com/cli/0.0.1791074829-g91b9e0/amp-linux-x64"
      sha256 "72d214d780669fb072fb2dfe4df51c3695c76553f46140e592c2245f5665da52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
