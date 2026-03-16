class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773677937-gaa0875"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773677937-gaa0875/amp-darwin-arm64"
      sha256 "29d75889ccd8ce60de789d6f311674758b5dab653ff6eec3c99e98ca232022c8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773677937-gaa0875/amp-darwin-x64"
      sha256 "71b3f02b39b3a9517a311935c60a3de83c39f1f3a92c61c877f4cafde0e9790b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773677937-gaa0875/amp-linux-arm64"
      sha256 "7d4c79414b7d74e6af1d5e1603a4d0fccc858b00d36e193b77011f9647502d91"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773677937-gaa0875/amp-linux-x64"
      sha256 "b00b29315c926d92fa3b24eb34de94e959a7f9bd5cde4163d3b31a16a9c5b748"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
