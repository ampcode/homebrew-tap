class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791425319-gd969c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791425319-gd969c3/amp-darwin-arm64"
      sha256 "3320d1d6061fb5c6a3744e8e97c22794ae50e4b6b70f852c479e7ace6715783b"
    else
      url "https://static.ampcode.com/cli/0.0.1791425319-gd969c3/amp-darwin-x64"
      sha256 "bcddc4ccdaacc7875ffb41ce9d0e88536216b893a5e96d16416839348b818015"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791425319-gd969c3/amp-linux-arm64"
      sha256 "852140b7c5e01ae3cd444a663248bb9bc45d631b01d9f1a8d1929150973bfa8a"
    else
      url "https://static.ampcode.com/cli/0.0.1791425319-gd969c3/amp-linux-x64"
      sha256 "74aade0f778f1662b945e329b586ee9c6018ced12654dca7a5aba9ac0fd25ff3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
