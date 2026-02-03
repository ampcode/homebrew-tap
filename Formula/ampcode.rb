class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770135218-ge57524"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770135218-ge57524/amp-darwin-arm64"
      sha256 "315da5c91d7961d5b9802d322b97254fc65340c66ee19584c79deefddfb67100"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770135218-ge57524/amp-darwin-x64"
      sha256 "8523e01dd455ecefa732ba37c04df30bc774207907efb83d4184aed0082c7ae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770135218-ge57524/amp-linux-arm64"
      sha256 "0a4cc63e90095337d3a698ff4f9ddef6c2ec89fa71455d03b3a58c257258c947"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770135218-ge57524/amp-linux-x64"
      sha256 "920cfc871ed26e4446a026e36afd354eb392da3ffb762d37b1e60dd975798a87"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
