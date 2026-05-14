class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778734884-g3e7dc5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778734884-g3e7dc5/amp-darwin-arm64"
      sha256 "5e099919631c0adcebedae01fa0ad5be985210a5c34fa5e85a784adebd2eb565"
    else
      url "https://static.ampcode.com/cli/0.0.1778734884-g3e7dc5/amp-darwin-x64"
      sha256 "551b535572111f7c0d54eb80d1db3b5fabb652a3aaf09f3d2553bfd1f76afb07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778734884-g3e7dc5/amp-linux-arm64"
      sha256 "162a2acc221336eabf3a1f70437036c5ebe57671477e1a1be7613a84340ef014"
    else
      url "https://static.ampcode.com/cli/0.0.1778734884-g3e7dc5/amp-linux-x64"
      sha256 "c13800592d3c6a96dd8d7f3970594c3441eff76e86f2fe192ee05aaee4c3d61b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
