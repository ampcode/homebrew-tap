class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773853764-gaaa33b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773853764-gaaa33b/amp-darwin-arm64"
      sha256 "20be543e454d92caad93bfd067e9531c83790c86de27144b580e1b08af240cb7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773853764-gaaa33b/amp-darwin-x64"
      sha256 "b5c6460b21a5df27d317650add18f8f7e28ceac5a9b274dfe092d40dcb58246f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773853764-gaaa33b/amp-linux-arm64"
      sha256 "1e1a69d609d41b9668bff863c8cd1654d7b48e32e16d30bf1463caccdb795fce"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773853764-gaaa33b/amp-linux-x64"
      sha256 "b9e6b4bfb5bb2c00a2a1f894f8a321852eedcd74346d7a563dc55290ded05618"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
