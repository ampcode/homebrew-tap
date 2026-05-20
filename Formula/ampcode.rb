class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779277578-g7ecee6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779277578-g7ecee6/amp-darwin-arm64"
      sha256 "16f40af59b311bb811a9f55dd226ed91cfac07a0b48b8ec74e5969d4e6aee290"
    else
      url "https://static.ampcode.com/cli/0.0.1779277578-g7ecee6/amp-darwin-x64"
      sha256 "5e063bacfa419a409d51d83ef698d8cbde640e3a4c59182e9997fab8b604fe5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779277578-g7ecee6/amp-linux-arm64"
      sha256 "5e20a1092bbd4668644979f77591ecef40c8046624fe2988e57f926c1a9bf032"
    else
      url "https://static.ampcode.com/cli/0.0.1779277578-g7ecee6/amp-linux-x64"
      sha256 "d83f93c26c224f50f0e3fba4dbfffd9283e2e5140256841c5a433f6911f418e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
