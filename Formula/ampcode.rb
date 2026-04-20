class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776664575-g49206b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776664575-g49206b/amp-darwin-arm64"
      sha256 "68a9a1fc3ea237e36859b9c0a11191396bc92216e1271e21022dbd5c8bed6867"
    else
      url "https://static.ampcode.com/cli/0.0.1776664575-g49206b/amp-darwin-x64"
      sha256 "3b7fd06ad549e4e201e719c6af4f22b63aa2335aecc65cd122b5a09fdb506708"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776664575-g49206b/amp-linux-arm64"
      sha256 "945e03c59b43e218c57b539eb8f20031815f16bc9497e83485fd8d3de4184803"
    else
      url "https://static.ampcode.com/cli/0.0.1776664575-g49206b/amp-linux-x64"
      sha256 "8f7968aaaa428fe58113c5fca7d99d74c099d0bad8b6cdf247fed8dd20c4d431"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
