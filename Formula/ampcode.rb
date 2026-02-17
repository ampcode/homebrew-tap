class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771317524-g0b5dfc"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771317524-g0b5dfc/amp-darwin-arm64"
      sha256 "d9cae56b685adf68b3faf82027083e2fae7fd12008cf1f5b8ab9d904df0d83a5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771317524-g0b5dfc/amp-darwin-x64"
      sha256 "fc6349cd7cb575debf8eba274079532c444f30c8a0c7559e925829bb678f9e66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771317524-g0b5dfc/amp-linux-arm64"
      sha256 "108e166042a77a2be365879eeb716427df62b349b372f308f7fc6be6656c3fb1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771317524-g0b5dfc/amp-linux-x64"
      sha256 "16e84719b6c2b6b832380992a3c6d062fbcd9c85af89e482fa43427d25f5e2c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
