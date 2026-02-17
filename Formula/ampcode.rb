class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771286655-gbfdeba"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771286655-gbfdeba/amp-darwin-arm64"
      sha256 "ddaa50ab42c3211ec217de6f49da563b4992c8ac347529e2c3f747f604898277"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771286655-gbfdeba/amp-darwin-x64"
      sha256 "80ce4e8483d3f7ed0bb5ad29bed7d5e7c2fc945a58faca7adffd90514f1a22ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771286655-gbfdeba/amp-linux-arm64"
      sha256 "710c7d1bca237aae4a46d61ab0ac6cbbce7e1430cebc1bde96f0f52ca065933e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771286655-gbfdeba/amp-linux-x64"
      sha256 "9800f5df366b1d1edf190563c1a9120e4b4185f05820a548c18ba68c77b2cb81"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
