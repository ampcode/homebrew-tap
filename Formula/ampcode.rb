class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785992460-g576799"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785992460-g576799/amp-darwin-arm64"
      sha256 "c39da040fc04fe3dd8726fff2ffa7e2334426ac3bb87952f87e371ee6789d8bc"
    else
      url "https://static.ampcode.com/cli/0.0.1785992460-g576799/amp-darwin-x64"
      sha256 "dc2a20dff5524a2f75bfc5da7aac36ab19843fcb02b47144728b650e1ae6b24f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785992460-g576799/amp-linux-arm64"
      sha256 "a29f82578f8feb29a02557633c9ea831851b97786a6e17c60b2604011eeef1c8"
    else
      url "https://static.ampcode.com/cli/0.0.1785992460-g576799/amp-linux-x64"
      sha256 "612f71fe9ef655c1578776bbac005d9e10a53fed13047c42aa8383b26b326222"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
