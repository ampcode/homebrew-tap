class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788461682-g712d0b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788461682-g712d0b/amp-darwin-arm64"
      sha256 "33fae49f8aa4e3aaa906fb127d41c34bd8add6ae3533d82cccb5f954cc0cb13e"
    else
      url "https://static.ampcode.com/cli/0.0.1788461682-g712d0b/amp-darwin-x64"
      sha256 "4636d9f2d0fa8edcbd1af252a04df174b7a215f533e42a0ac029e4692498bd62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788461682-g712d0b/amp-linux-arm64"
      sha256 "6bf7490635b195be92e7829480e627562b4314ea0c4219a260838195ab9122a2"
    else
      url "https://static.ampcode.com/cli/0.0.1788461682-g712d0b/amp-linux-x64"
      sha256 "91927848e5c159f059709b981c237922782c5e6e63a0b16d575e317a4952ae5a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
