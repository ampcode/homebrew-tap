class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773936899-g2da5b4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773936899-g2da5b4/amp-darwin-arm64"
      sha256 "a8d4ed86744c5912b34ed294fdfe06451d1acb716480ae6d6f57f47a39f5c9d1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773936899-g2da5b4/amp-darwin-x64"
      sha256 "cc69e414088277ce81d059e1118da6f1b3de2cb1555af1218660ba6df13b6a48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773936899-g2da5b4/amp-linux-arm64"
      sha256 "11ca7cf2929d8a9c727a6b76df7640756be4f938dfd17086657ff5b5d4408b3d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773936899-g2da5b4/amp-linux-x64"
      sha256 "e693a6bd9bdcb1ed076c7712b50d6e686acc0ace2e977e197ea95501ac92e151"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
