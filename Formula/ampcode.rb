class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782492379-g890a1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782492379-g890a1a/amp-darwin-arm64"
      sha256 "d597fe9a548db56a59c1bd697a4e14b40aefb768306f0dde1536c164e13980a2"
    else
      url "https://static.ampcode.com/cli/0.0.1782492379-g890a1a/amp-darwin-x64"
      sha256 "150da6324a58216004e5e868a8cbe25c5fbdba159efec959d442e358a4d7e671"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782492379-g890a1a/amp-linux-arm64"
      sha256 "e2c41cb0d6414d6f5cdeeac445e5315286137302aca428b975dd79f5b755a507"
    else
      url "https://static.ampcode.com/cli/0.0.1782492379-g890a1a/amp-linux-x64"
      sha256 "2d6de9426d661a4b3dd5b33f50dfcc5bc27451d2b35488c5295205e73e739f64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
