class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769676032-ga2ec76"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769676032-ga2ec76/amp-darwin-arm64"
      sha256 "f66fc037a0226913b751296afcb79f6d51bdd4823776f6d7a26ef198ca145cdf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769676032-ga2ec76/amp-darwin-x64"
      sha256 "77dab4a236bd1a1cf36b20ecd3fb9435b9d3677d858cea0d84373b43e3e65505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769676032-ga2ec76/amp-linux-arm64"
      sha256 "2378307d4fcb13508fbe1e2aadf6f947df558cf602cabc63caabf3ba9c009461"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769676032-ga2ec76/amp-linux-x64"
      sha256 "71c7128f78b8dfe5333a1e355d806d7cc20a9d63d0ce4eda5841cc806c223449"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
