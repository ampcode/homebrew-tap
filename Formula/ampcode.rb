class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772928130-g4a08d1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772928130-g4a08d1/amp-darwin-arm64"
      sha256 "2d892053385968793d07618254b432fba606f9b805190b72c73b83fa1b43a917"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772928130-g4a08d1/amp-darwin-x64"
      sha256 "9d497acd68ba743672cb8d4fc713c6e1731594bd2a28c5411df148aefa095cab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772928130-g4a08d1/amp-linux-arm64"
      sha256 "a8ff412943926f80d59dadb11913774818bd983fc3fb606372570feef0e4fd17"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772928130-g4a08d1/amp-linux-x64"
      sha256 "41687d4661702322593525927cdcda4858207816cefb8ae7913b157a1d9082d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
