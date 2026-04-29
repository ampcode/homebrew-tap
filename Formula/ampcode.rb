class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777437219-g5ae34d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777437219-g5ae34d/amp-darwin-arm64"
      sha256 "6c0116693a4c56952de977896ef2aa5e86ec51e828a50e9755a2c6e8418cf500"
    else
      url "https://static.ampcode.com/cli/0.0.1777437219-g5ae34d/amp-darwin-x64"
      sha256 "0031609627d1bbd4e0afb7722a52cf734691257f930fe91e912b5d9f22be7ace"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777437219-g5ae34d/amp-linux-arm64"
      sha256 "c3aebf79c3be52d51d9580a53820e5e99f13b5f61c355a9b27d41f5e19b24539"
    else
      url "https://static.ampcode.com/cli/0.0.1777437219-g5ae34d/amp-linux-x64"
      sha256 "86f749875e6fb5330a869252ab18520b1a7e20cd0059dfadc36e137bfd1f1208"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
