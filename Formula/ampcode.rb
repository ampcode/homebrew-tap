class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775376463-ga6c742"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775376463-ga6c742/amp-darwin-arm64"
      sha256 "41b566ab248baaec5e64d889f6b886eb4c0b3b91260f58301433c6bbddced067"
    else
      url "https://static.ampcode.com/cli/0.0.1775376463-ga6c742/amp-darwin-x64"
      sha256 "6a52349247b2c7212f721585f1f7e0881e1563fc9835e340814731152417e807"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775376463-ga6c742/amp-linux-arm64"
      sha256 "27d77742e22b420a0d1d440e0b8f5c69377ffe149df67a6114a821b8565ad291"
    else
      url "https://static.ampcode.com/cli/0.0.1775376463-ga6c742/amp-linux-x64"
      sha256 "2c0f83758699120fffcc7df44d15c126850bd937e63205a566dc1d1b1b39e3fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
