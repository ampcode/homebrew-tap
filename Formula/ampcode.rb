class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785668924-g290d46"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785668924-g290d46/amp-darwin-arm64"
      sha256 "0daecc4ade72a3d520d0a8dfd911c7736e4bdf5b5292c0dd2c494ee470c7e2f3"
    else
      url "https://static.ampcode.com/cli/0.0.1785668924-g290d46/amp-darwin-x64"
      sha256 "5238d343995ca703e4a44ba8974a63f5cc6255639d19c5df21966ee569dc2f37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785668924-g290d46/amp-linux-arm64"
      sha256 "33065556bf76b7cb95cf5dfeff1527dc848031f6ce016e1dc27749191a3e4f47"
    else
      url "https://static.ampcode.com/cli/0.0.1785668924-g290d46/amp-linux-x64"
      sha256 "5e10c80d04f6f0a77f34030b90967d74aafb6f87ebe0e96750d1ee87c7460c2e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
