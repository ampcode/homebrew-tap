class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772798621-g0ef3ec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772798621-g0ef3ec/amp-darwin-arm64"
      sha256 "1d289cf4d6d38c0499427cca76a2f24f55dc9bb4b957c1f422c6e7f907bece5b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772798621-g0ef3ec/amp-darwin-x64"
      sha256 "650e72ead39bb537af48e0e0e8837890fda2a5eb77c7d1e43a914170d3d5737e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772798621-g0ef3ec/amp-linux-arm64"
      sha256 "c246b761899e1f21c9045f047fc4fbccd9455c55670b65c0c53658ec1722bee8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772798621-g0ef3ec/amp-linux-x64"
      sha256 "23fed19cbe55e637f6f1f6ac35552b0645b8d036be67fa1d2b420e3c69b00982"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
