class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772050001-gef139f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772050001-gef139f/amp-darwin-arm64"
      sha256 "b011815ebe7931e0579fe7376f6f72fc789ab71ee796201d3a3a414258d7c802"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772050001-gef139f/amp-darwin-x64"
      sha256 "6f7aa5422701099e3bd879a67603b64e0d69f700911b48b6916c7dc27d9e4abb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772050001-gef139f/amp-linux-arm64"
      sha256 "7109a48f9ea3ab80b9430aba847df19756b01e184fa70ae5183e454f28e38da7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772050001-gef139f/amp-linux-x64"
      sha256 "35bf14a81f08fa056f9d0d6b27bd0f1416bea1c98efe0b1145a2f7bdddfb6df0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
