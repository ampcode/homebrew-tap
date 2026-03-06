class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772802427-gaf6d64"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772802427-gaf6d64/amp-darwin-arm64"
      sha256 "37a5d6e36cce3260fd6a38f34c2b2226a4196e4aea93b90bcdfafd7076fefac4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772802427-gaf6d64/amp-darwin-x64"
      sha256 "6079be423ed26a586443b5a18a020ce59e2b03cecd763207c70ef14601d4bda6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772802427-gaf6d64/amp-linux-arm64"
      sha256 "ce0bd22badcaaac0e3e33f2f9740f7227687e8b1da749f7fa831f8b7cd013b94"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772802427-gaf6d64/amp-linux-x64"
      sha256 "9138bc011eb810307d8a7e466b576d225fa88964a63fd7b55be58e63453c85ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
