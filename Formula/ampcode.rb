class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785356380-g8b3671"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785356380-g8b3671/amp-darwin-arm64"
      sha256 "62f404babe3d36281c07c47b064dd41b4c062d4044713cfa0b177010dada9729"
    else
      url "https://static.ampcode.com/cli/0.0.1785356380-g8b3671/amp-darwin-x64"
      sha256 "c91402d2428984f36fe13930244058807f7323cbe4456c596e4f09927393a178"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785356380-g8b3671/amp-linux-arm64"
      sha256 "0fdf00d6c05b7a1ad195e5458eda400a769238fb605174cb8e860b3bf89004d5"
    else
      url "https://static.ampcode.com/cli/0.0.1785356380-g8b3671/amp-linux-x64"
      sha256 "a34e75ea256ed30341765a6335e7ed98abe60ee1c2f2abb9993cb65b58a793d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
