class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793548828-ge47c64"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793548828-ge47c64/amp-darwin-arm64"
      sha256 "fbf5542353ea99665b4902c1892afc5857c6c7085b9b122334ca6f85309bd5d2"
    else
      url "https://static.ampcode.com/cli/0.0.1793548828-ge47c64/amp-darwin-x64"
      sha256 "5c853bb1136fd129cd7190829752fb0933295d58e6ef9d77200a6df694fe9882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793548828-ge47c64/amp-linux-arm64"
      sha256 "f654bae39298a657f072cbd5a33104b84aef60005f2e0b912b4b6cd6cf7623ec"
    else
      url "https://static.ampcode.com/cli/0.0.1793548828-ge47c64/amp-linux-x64"
      sha256 "62186daef39756220a7fc6247543ceab0d967e70594b43a2122b28e2f5c101a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
