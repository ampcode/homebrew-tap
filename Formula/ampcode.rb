class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774964363-g9f23e6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774964363-g9f23e6/amp-darwin-arm64"
      sha256 "bb96da5f71ed17450c54d8307da54b6f8847b17757fc3684892246d496912b4f"
    else
      url "https://static.ampcode.com/cli/0.0.1774964363-g9f23e6/amp-darwin-x64"
      sha256 "65020eacd20dc5efb40a3c7d625b590900842db53e1c3f2528010da1f2626714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774964363-g9f23e6/amp-linux-arm64"
      sha256 "6759762c8c877be11c68d5ce84217255e277484a3aa7f8d1680f2102c22fbee1"
    else
      url "https://static.ampcode.com/cli/0.0.1774964363-g9f23e6/amp-linux-x64"
      sha256 "6c6aab8553eb002208fa45f450ad02382b25a462c449035cb47e61dae4e90b9b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
