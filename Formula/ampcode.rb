class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790171806-gfe69b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790171806-gfe69b3/amp-darwin-arm64"
      sha256 "b8c7344514db5a1e767a12ae83531ebb1952a2ed903f457f16f801fad6fc59fb"
    else
      url "https://static.ampcode.com/cli/0.0.1790171806-gfe69b3/amp-darwin-x64"
      sha256 "33b8ca8f3920edd2128a6c16609de10c9d6e74796fec780696a7dcb9fa5e95eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790171806-gfe69b3/amp-linux-arm64"
      sha256 "8c407ce47cf53ef19e0ea990d7a6fcc2715b30e6bf348f0ba7f01738ef2a4919"
    else
      url "https://static.ampcode.com/cli/0.0.1790171806-gfe69b3/amp-linux-x64"
      sha256 "6cfb186ecf5ca651e15ffbfd06ab22ef2c535c5b6a6dbbbcd13e686ca2509318"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
