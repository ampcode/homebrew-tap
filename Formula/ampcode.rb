class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794729642-gc6c9b7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794729642-gc6c9b7/amp-darwin-arm64"
      sha256 "a190ba6ae9c12d3b3bc7c3dcd78a5a692873a04aa88d471395441483e2d1f45d"
    else
      url "https://static.ampcode.com/cli/0.0.1794729642-gc6c9b7/amp-darwin-x64"
      sha256 "f9c290eb5d57506b6c669820efa157a95246b7722ae911133786caf3b041e74b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794729642-gc6c9b7/amp-linux-arm64"
      sha256 "476cc75d0d0d67b66f17f994201882644e68164a86825c15cd4752352c25b976"
    else
      url "https://static.ampcode.com/cli/0.0.1794729642-gc6c9b7/amp-linux-x64"
      sha256 "a619b22204fcc3ada20fa38cf867b7287fc937e92beea2183fcc02a191aa54a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
