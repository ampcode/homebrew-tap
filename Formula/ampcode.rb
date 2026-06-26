class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782439082-g706a2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782439082-g706a2e/amp-darwin-arm64"
      sha256 "1edd1a519510457956a94d8e99d7e40d0f1f045efffb07472ef4a077038392ab"
    else
      url "https://static.ampcode.com/cli/0.0.1782439082-g706a2e/amp-darwin-x64"
      sha256 "76c0f8452495d36cf65b1da931eb5129ef3dd8e0b31ae9af51f61e3456fceebb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782439082-g706a2e/amp-linux-arm64"
      sha256 "8b74a95ccda19d70813999f6ee8fc63c600f70b1446870c5471c41981cc3975c"
    else
      url "https://static.ampcode.com/cli/0.0.1782439082-g706a2e/amp-linux-x64"
      sha256 "ba39cb7156f46b44e3b8426f2cb08ae06f7961d7539543a013933655161f1c2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
