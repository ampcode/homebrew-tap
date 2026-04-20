class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776661135-gb87102"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776661135-gb87102/amp-darwin-arm64"
      sha256 "790ff6889f10f8de18049423e354e7261f456d79bb8cb41ee1f8cf4b094429b3"
    else
      url "https://static.ampcode.com/cli/0.0.1776661135-gb87102/amp-darwin-x64"
      sha256 "6e1f5316985324a66e0d4b79f7fc132f1dfdf4348dcfd50fce0cadb14bd0c560"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776661135-gb87102/amp-linux-arm64"
      sha256 "1b97acb98e1d3b43b5181018ac8c85d477854125193f25c9bf4eb3e4fc274a93"
    else
      url "https://static.ampcode.com/cli/0.0.1776661135-gb87102/amp-linux-x64"
      sha256 "78959eef30a56364152cf02c8839dc76a05b10a278583160e75934264ef46984"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
