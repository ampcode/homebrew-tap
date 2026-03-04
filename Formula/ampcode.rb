class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772623374-ga98259"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772623374-ga98259/amp-darwin-arm64"
      sha256 "fc0e4fc28c24f4fdee32b359985a50dac805fc7ed09409cce0bea733277326de"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772623374-ga98259/amp-darwin-x64"
      sha256 "4d5cfcf72358e70019a61acc4bcb5f0be05b2bd7bf707a7b89812e0772f9239f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772623374-ga98259/amp-linux-arm64"
      sha256 "98469818da7ea75cca391ee5e0444a6bd27bfe069476295a721cc2b9184a92f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772623374-ga98259/amp-linux-x64"
      sha256 "0c478793390baa14c655295181bb825db15de750e6605963f7f71b0c87f263c9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
