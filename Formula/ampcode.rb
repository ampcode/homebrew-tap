class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789743171-g4569de"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789743171-g4569de/amp-darwin-arm64"
      sha256 "891d028814dd68266b7240c9464685c7557a23e6207e87add9d64e95a7c6e412"
    else
      url "https://static.ampcode.com/cli/0.0.1789743171-g4569de/amp-darwin-x64"
      sha256 "45c6d4505801d2688fb7d33dcf0bf66b0fc0337d423cec692508c5ddff29691c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789743171-g4569de/amp-linux-arm64"
      sha256 "74134cb61d39e257a1aba9f5f3ed46c2582926adbbcb53de4c72ae40ce1dd8bf"
    else
      url "https://static.ampcode.com/cli/0.0.1789743171-g4569de/amp-linux-x64"
      sha256 "fdd1e75ac83530e65e1c2e70d2effe8d06d2b260311be9f2fc3920bfae2d1038"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
