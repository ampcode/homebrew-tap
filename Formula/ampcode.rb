class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772163055-gc2296c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772163055-gc2296c/amp-darwin-arm64"
      sha256 "ed27c8ac9722bf73227fb4877986000c20bb0a8716219a5245ab94f0be07a05a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772163055-gc2296c/amp-darwin-x64"
      sha256 "9cf2c40754265ce65578d7c9b51f4cf31c46f0c129d598238e1d167f55bfbe32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772163055-gc2296c/amp-linux-arm64"
      sha256 "c07ffa73a5df087a6018c72619dca5906e8ad54905bcf386a437f3a43ba22844"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772163055-gc2296c/amp-linux-x64"
      sha256 "6a7f7a45a953c6b44994606ad443f2be192fe02f656589a7329ed02143696032"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
