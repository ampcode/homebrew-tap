class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769660927-ge90ba1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769660927-ge90ba1/amp-darwin-arm64"
      sha256 "d33fdb9780646fb7c2d383dc471124bd2ec426e66970becf94d04729e0d44b87"
    else
      url "/0.0.1769660927-ge90ba1/amp-darwin-x64"
      sha256 "64798b398f6020e2648ef92c029d7426c35c0b806bf0ccfcd947bea75d2bb725"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769660927-ge90ba1/amp-linux-arm64"
      sha256 "4985e9683fbe27e154cbb6c3e65169d00239972e60570c6087fe45d196eccfc7"
    else
      url "/0.0.1769660927-ge90ba1/amp-linux-x64"
      sha256 "76e8c034e3eca2656dab2bc9af45c1da539dd0fdfd1b54dd03a8d0c48935c0b4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
