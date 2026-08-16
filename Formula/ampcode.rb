class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786867375-g08199f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786867375-g08199f/amp-darwin-arm64"
      sha256 "1836586afccde2dd74bc50f50d37049054111054004bc6ebfe3fc4a3a9a49353"
    else
      url "https://static.ampcode.com/cli/0.0.1786867375-g08199f/amp-darwin-x64"
      sha256 "3373664ee3162b97e71904b1f7dea58475458f508dac68aea57725927e38f1fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786867375-g08199f/amp-linux-arm64"
      sha256 "f6f7e421dfe87c1f5f0e2ac2b1de023e7974f9a4460cbd6eab382150f9727293"
    else
      url "https://static.ampcode.com/cli/0.0.1786867375-g08199f/amp-linux-x64"
      sha256 "2b0cee75420c31aa9193bf854d3428dde237b1add56d35707cff1bfd5d06a639"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
