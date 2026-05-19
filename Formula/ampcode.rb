class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779172681-g60b2a5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779172681-g60b2a5/amp-darwin-arm64"
      sha256 "1bce0ca68ff4274594c58659618d860c9a8c5fa140fc7a71884ef88c034f6ddc"
    else
      url "https://static.ampcode.com/cli/0.0.1779172681-g60b2a5/amp-darwin-x64"
      sha256 "48d79c8216563342cca6cd107528a02fcf246855aa17fea2be9e2a23b57a3834"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779172681-g60b2a5/amp-linux-arm64"
      sha256 "2aa5d57f1a9b733c6590ae5efd107b6f34be8f9dfb460ed482134ce92161d0eb"
    else
      url "https://static.ampcode.com/cli/0.0.1779172681-g60b2a5/amp-linux-x64"
      sha256 "1b040f0bfca350b6321944108e30163866afc59c3f99551c11212205c340b9f6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
