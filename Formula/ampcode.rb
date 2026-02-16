class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771235292-g4fef47"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771235292-g4fef47/amp-darwin-arm64"
      sha256 "f91f4ecf7a029c8c13eeb084840468dc0e55ec77a31624916935de88d74eaffb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771235292-g4fef47/amp-darwin-x64"
      sha256 "e9d3390fa089a12a52b81e088368e1188d4111af3bce1079d11d365dee865426"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771235292-g4fef47/amp-linux-arm64"
      sha256 "4317f44c3aa0374d674bed228c48b42a2a000eb9ffb77d94c938c61f0469dd2b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771235292-g4fef47/amp-linux-x64"
      sha256 "b2c83e9f1a0a47d394b376778452ff20e070b2bab914f1ff73498cdffcdab51d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
