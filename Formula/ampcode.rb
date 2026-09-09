class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788912097-g82ca44"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788912097-g82ca44/amp-darwin-arm64"
      sha256 "5119e825955ba24e72ba767d48a6912e952f29d85e0fe342300024a2b0b16872"
    else
      url "https://static.ampcode.com/cli/0.0.1788912097-g82ca44/amp-darwin-x64"
      sha256 "ab25011d5e30dc5f2033172a347ad626cf8764f164470a23882ad4c2fc8ea13d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788912097-g82ca44/amp-linux-arm64"
      sha256 "f1221e4e38e4eb05d026c9e4585ea314de2f7cb2a1f09f1035a81602a1ebd1d3"
    else
      url "https://static.ampcode.com/cli/0.0.1788912097-g82ca44/amp-linux-x64"
      sha256 "57cb64bbe7c705fa7d48e1cf7ee29459fe4c1413614bd1eb409d2a8603ce8e95"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
