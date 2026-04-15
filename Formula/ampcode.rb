class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776264008-ga8f1a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776264008-ga8f1a4/amp-darwin-arm64"
      sha256 "c9f28c8eced37bec5712ed1b4a7faee2174862fe1ace785a4d59707f9e0c6fe7"
    else
      url "https://static.ampcode.com/cli/0.0.1776264008-ga8f1a4/amp-darwin-x64"
      sha256 "a1da2e310008f213a13b3d57e71cd1b0355e7911ec94d3767c7e71c3cb20599c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776264008-ga8f1a4/amp-linux-arm64"
      sha256 "cd7c448d0faff044e0ad9408d66578cb454a01c264c696bf78ca5a36435ffe3e"
    else
      url "https://static.ampcode.com/cli/0.0.1776264008-ga8f1a4/amp-linux-x64"
      sha256 "baed6b33839c281f5047d9a46fab3e8bf37f84c00ac083c7aa8e8faa189a8e46"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
