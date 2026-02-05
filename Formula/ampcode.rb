class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770307887-g3c28da"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770307887-g3c28da/amp-darwin-arm64"
      sha256 "adf2f8745082ec935c38617bc7ced720781f5cf5d9412dafe32e1ee497895c43"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770307887-g3c28da/amp-darwin-x64"
      sha256 "21b983f845bbfe4ef7d4394f7755114b17d4d3b077d4226b408f849ef78adde9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770307887-g3c28da/amp-linux-arm64"
      sha256 "b333d3b7ab47a53417b2dd8f0ef3f94ba15111b61c19916bbbec9ad169056869"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770307887-g3c28da/amp-linux-x64"
      sha256 "61febe3513e4eb4ba7057e18b6c61562819a84bc478e4667cc8724c9392d9393"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
