class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771013177-g23242a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771013177-g23242a/amp-darwin-arm64"
      sha256 "582766aee21b0fb3fd18ec37cde3cff02c5da2b97726959a91b36d3f7d1545c0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771013177-g23242a/amp-darwin-x64"
      sha256 "9cd434b09ef498992362d878a266cb5b8c74d9d734672b8a63d5e1d86b70f6bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771013177-g23242a/amp-linux-arm64"
      sha256 "07667f3ca1b542dcfd42f3c3e265e7997215a909fbfc4e6a0bdb5008af33971a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771013177-g23242a/amp-linux-x64"
      sha256 "72eff163c485853d25095602015b55e2f70638fad43f93f3236cd1723383c2e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
