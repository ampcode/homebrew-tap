class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769790894-gffa3c7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769790894-gffa3c7/amp-darwin-arm64"
      sha256 "4e0d5592da2f22dd3bfe450831168944de58dbf8379afa087fc0b53b5850e3f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769790894-gffa3c7/amp-darwin-x64"
      sha256 "ed1d542e148eafe40439272e5ccb70219949c87044bb39120f2ea5a7f1dd4cc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769790894-gffa3c7/amp-linux-arm64"
      sha256 "3e614bdf96e0bc678d83308e95eaf95fcdcb452c8472d344b148988ca2bc68ad"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769790894-gffa3c7/amp-linux-x64"
      sha256 "3c31a7698fbf36db6ebe08f6608263467451462ed8f13d5ea945e8f0b0313ad2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
