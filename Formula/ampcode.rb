class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772515327-g7c3539"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772515327-g7c3539/amp-darwin-arm64"
      sha256 "b89215cee1277e8f42889ac77a065085d990769a0125b5ea23003d3e10f07db0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772515327-g7c3539/amp-darwin-x64"
      sha256 "ab67cc96a4c9459abe2a61e023568f4cca3c61b0a2775f349f22a9fbd03f1697"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772515327-g7c3539/amp-linux-arm64"
      sha256 "379b38d147aec3ef27364eff0e3031169efdfacbeb22d51a7a874ee47ab82f94"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772515327-g7c3539/amp-linux-x64"
      sha256 "0b684d3831c3b4a5f0867465f6ccf9f24c8a82bd56bda8b3cbdaba8962a123e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
