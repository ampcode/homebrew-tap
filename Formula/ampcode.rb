class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772294494-g9b3cb4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772294494-g9b3cb4/amp-darwin-arm64"
      sha256 "4fc13a1d04eabce2610bd07ddc8add0935792cf2da34b2169a88911b07be5f6f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772294494-g9b3cb4/amp-darwin-x64"
      sha256 "69a5e56ad9f80bfffdf53d1907ed89ba6c1c5a0558f0809f1ec037d4b2f68af0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772294494-g9b3cb4/amp-linux-arm64"
      sha256 "56e957c00c39702a2bcc05a823833483aed806dd6e3207c890ec48d7dce702d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772294494-g9b3cb4/amp-linux-x64"
      sha256 "a69326b22ee4aa5186da6e722aa5c6c5bcee8a69c883d0e8eb20457413ab1a97"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
