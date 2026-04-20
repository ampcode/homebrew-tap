class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776643732-g3ad600"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776643732-g3ad600/amp-darwin-arm64"
      sha256 "282d3bfb19517cea16eee24187f34419b1f7eb2669f9c8978b913b9c5dea5d1b"
    else
      url "https://static.ampcode.com/cli/0.0.1776643732-g3ad600/amp-darwin-x64"
      sha256 "369d6b86256a2871a018349953a7506ee33f6608bb7eecc397deb9981ec22097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776643732-g3ad600/amp-linux-arm64"
      sha256 "0a352f0d45fd248011cccb91b7edb6c347ea687694dc3ce4963e77e4ac195ca9"
    else
      url "https://static.ampcode.com/cli/0.0.1776643732-g3ad600/amp-linux-x64"
      sha256 "9eb757c6bafdf6acc6fd92bea6b0ab45214501b707d367e7fb92f275576a4727"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
