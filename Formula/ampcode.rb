class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770826724-g23d2c0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770826724-g23d2c0/amp-darwin-arm64"
      sha256 "ce415280c3509cb4e81c0d9969424d96038909b580cb3d5ffdfaab2b9cd4fffc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770826724-g23d2c0/amp-darwin-x64"
      sha256 "8f4b35c3125aca98da76836f29abf0283323fb933ea4234c5a5cc0025deaa38e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770826724-g23d2c0/amp-linux-arm64"
      sha256 "9bd34419c25781692685a7e70e03e386255c832b7350834bd60c465940b41e27"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770826724-g23d2c0/amp-linux-x64"
      sha256 "2ceeb59376dd8dafb9199bab5357c8660605a28a78c71455815abf38694f618d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
