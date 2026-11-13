class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794600035-g3776ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794600035-g3776ae/amp-darwin-arm64"
      sha256 "001f41634a30ef394e8079f98b4b7d2e2f8b17f2c6f43f7f22e61381040d3694"
    else
      url "https://static.ampcode.com/cli/0.0.1794600035-g3776ae/amp-darwin-x64"
      sha256 "81b3f091107b0d4b66d1d7f0cf0183d5c28c60d07907530b6865f715687fbbfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794600035-g3776ae/amp-linux-arm64"
      sha256 "e7981d7a2f05253aec9af1eb9df489f2bfb5b74eb6c1cd3a2a2a84fafe6e6b6a"
    else
      url "https://static.ampcode.com/cli/0.0.1794600035-g3776ae/amp-linux-x64"
      sha256 "82eaf926d477a7555132196719bf52c4a75f0b9e4fe50fecee4d168f91f6bdb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
