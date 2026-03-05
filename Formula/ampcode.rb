class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772700641-g8f5462"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772700641-g8f5462/amp-darwin-arm64"
      sha256 "985743934e6a957edb1a345dc8842fad09973d23301098d97ce7c8cb1ac9399b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772700641-g8f5462/amp-darwin-x64"
      sha256 "218bfe39f333d533e020ad8ae325fc041922b1eff0c36f26a875f111dfeb1c7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772700641-g8f5462/amp-linux-arm64"
      sha256 "7b306949c0364c9fc89364aefa31ec9e1870f9bd8f2a1faa5f79ddf6405bed8e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772700641-g8f5462/amp-linux-x64"
      sha256 "f10d76f40145daf58f8f8b75430b83167fbd7ffd7bbfd501a8ef3fe0d56126d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
