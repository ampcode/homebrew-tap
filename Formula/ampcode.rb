class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772625820-g2da4e8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772625820-g2da4e8/amp-darwin-arm64"
      sha256 "35168b432e98d56450b2b36d89593d4bc3a74da3f451fce6979a71c3e2a8a2bd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772625820-g2da4e8/amp-darwin-x64"
      sha256 "553c36a02b3cf980b61d819fc595921727ef3dce3dc8d2fc254342635f9aaa04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772625820-g2da4e8/amp-linux-arm64"
      sha256 "383f37b21e18d14849fd79f5726e7df01d3a44f6a8f8f9f38e53decf2a69531b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772625820-g2da4e8/amp-linux-x64"
      sha256 "a0e801595643534426141efc367c804a8e2028e2797e6f27ed29d8e229bdebed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
