class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774119243-g687a34"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774119243-g687a34/amp-darwin-arm64"
      sha256 "0ba334d6fdfd43623c75e46dd4fc9fe52d5fbec6255660c4c2111f8cabe74108"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774119243-g687a34/amp-darwin-x64"
      sha256 "c983798b47762079380f4e658ef678d35d9d209f317eed498c737eadc36905ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774119243-g687a34/amp-linux-arm64"
      sha256 "5d04ab81b401f03a30eb599f32d2cfb966559d292ef2c46b28dab637ae853bac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774119243-g687a34/amp-linux-x64"
      sha256 "15c96c35c6f304f53cc44537c8430cdbad8aa5c259d852b9023a2e9b8c69c8a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
