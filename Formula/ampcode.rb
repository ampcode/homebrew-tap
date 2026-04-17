class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776401749-g799711"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776401749-g799711/amp-darwin-arm64"
      sha256 "717418cc193ba585ad601cad9ff9a1dd4d86c8837a7f1506b2711741cbf3cdfe"
    else
      url "https://static.ampcode.com/cli/0.0.1776401749-g799711/amp-darwin-x64"
      sha256 "2de1f5287fac26d80762d3d6d5f1f30c7d6e92570482084bb72c9e2f1c10e044"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776401749-g799711/amp-linux-arm64"
      sha256 "bc5de7563b7e90fdc83e7b3592793803e53f6900377310362b993454a5ce1b30"
    else
      url "https://static.ampcode.com/cli/0.0.1776401749-g799711/amp-linux-x64"
      sha256 "2e3137111b64763f01d4d447d09dc55af2db7e2fe3048247e99173225be61a53"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
