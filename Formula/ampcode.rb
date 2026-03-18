class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773808636-gf14357"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773808636-gf14357/amp-darwin-arm64"
      sha256 "d13588ac38e83e39c82b115fd9b4aa82c9ad9fcaf191dc67c96b23832250e0bb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773808636-gf14357/amp-darwin-x64"
      sha256 "33e25a06bbf7ef091eb67c1c6a690a71fc34d7023eda6112340d13938493322e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773808636-gf14357/amp-linux-arm64"
      sha256 "5b44aeee51afed2775b021d230b04563d17da4d7c30abe3015190c3d80bd0a09"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773808636-gf14357/amp-linux-x64"
      sha256 "ee452cf58d024decd1383138eaa9e31bbd77a6f2652b04f57e9eec97f1c29036"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
