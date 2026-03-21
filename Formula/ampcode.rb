class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774123285-gb6e451"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774123285-gb6e451/amp-darwin-arm64"
      sha256 "37a07d2fda7f7b34ae04e2c3fce801d1c3e123710e7ed09204977ef0c81fd1cc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774123285-gb6e451/amp-darwin-x64"
      sha256 "bdb82b6f9d4e1044d0f661424346e4f7e02a641a4c454962db5c4efacec28d0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774123285-gb6e451/amp-linux-arm64"
      sha256 "8cb29f58b88a362e6e5c09d3a2b985ee082aba64c41525d59d4bf15cf214f205"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774123285-gb6e451/amp-linux-x64"
      sha256 "70c11127f85c8fd8fee5df08c9414ebe7faf96bd33200a3939d3cccf095df6b3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
