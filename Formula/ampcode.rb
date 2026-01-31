class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769846494-g8fd058"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769846494-g8fd058/amp-darwin-arm64"
      sha256 "09d97783586e04ce4c5855497cf745775998f6c0301e952d1b2a33790f2c7bec"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769846494-g8fd058/amp-darwin-x64"
      sha256 "c4f608ffb4b9d6a3c2f6aab0259223dabb11a733eeaa5ba82d7fbfaf1d4b0d41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769846494-g8fd058/amp-linux-arm64"
      sha256 "f676a034892a556cc159b37e2f006a7cf664b53b55eee090f5ba42e253a57adb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769846494-g8fd058/amp-linux-x64"
      sha256 "a1e181355afea974b552882b0f869a700da16fd04f304ea679413fb25671eae4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
