class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771838262-g353b96"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771838262-g353b96/amp-darwin-arm64"
      sha256 "0406692b8a07f4cc885a098358934a4c7fa390a1b1e0fae047453fa80e2d464a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771838262-g353b96/amp-darwin-x64"
      sha256 "4b2309f37dde6e40274e890ec95065c8c1c386782392bd107226f73912b51e73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771838262-g353b96/amp-linux-arm64"
      sha256 "c7e39c08787cc05dcb053debd8570e4167592a17f21301d7481c8e4f9bf8e958"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771838262-g353b96/amp-linux-x64"
      sha256 "a6f867e31e444891b669cf73673dbad471fcce13c2e05837b47e6ed9b5938dcb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
