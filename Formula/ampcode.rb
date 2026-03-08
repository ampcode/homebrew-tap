class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772956922-gc6107a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772956922-gc6107a/amp-darwin-arm64"
      sha256 "b23383b81cf0a4b5405a37da79dce53bcba12536cf79fa0e6519fa71b6d49f4b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772956922-gc6107a/amp-darwin-x64"
      sha256 "60b6d1846665db293dc7ff996e4d51bd3a425593b8747d19ec03035ad7e07083"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772956922-gc6107a/amp-linux-arm64"
      sha256 "7442cd05ee7f4940acf81cf1ccc15fd004da42daa428f5423214c4143463a84c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772956922-gc6107a/amp-linux-x64"
      sha256 "92fe935b0332d1a97597564ca266ece6d3528f66ee2a415169e6e47d056d5596"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
