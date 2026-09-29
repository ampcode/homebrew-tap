class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790683256-gc25f8e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790683256-gc25f8e/amp-darwin-arm64"
      sha256 "57f7aed3bbeffb5b991063ca39f4b76e35ac3abaa89458632e22729dc26b7a34"
    else
      url "https://static.ampcode.com/cli/0.0.1790683256-gc25f8e/amp-darwin-x64"
      sha256 "1e89bd520886ff0e1c644235298acd765367cafd2cce781347458e355d1ddebf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790683256-gc25f8e/amp-linux-arm64"
      sha256 "b1f7bdbd6bddf4c867df9d41eb05fc0d9469a1d248cb1de8f8a76ff3449a4ea3"
    else
      url "https://static.ampcode.com/cli/0.0.1790683256-gc25f8e/amp-linux-x64"
      sha256 "dfa8307844d7e00531905093819e7e19c5a7e36f448c4b6efb87c0a4c1491939"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
