class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771548736-g37773d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771548736-g37773d/amp-darwin-arm64"
      sha256 "8805dc4d0dee26875b49dc694f900bef9b919de38c3ee04c369610126a34a88a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771548736-g37773d/amp-darwin-x64"
      sha256 "04eae8c6e9a4e2175bf58bfb0179cbb184ca1f2cd0b89d597ec7566daaa22ca1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771548736-g37773d/amp-linux-arm64"
      sha256 "1bbb2c609e17b292648267ede6bacaaad2f8cc3bab456d94f3b8fe8bb55215a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771548736-g37773d/amp-linux-x64"
      sha256 "8cb4ed1e0c0f1d66bc313fb480b4734e8779166641a0fca2742710edd860ae41"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
