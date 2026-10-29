class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793260836-gdb4c2d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793260836-gdb4c2d/amp-darwin-arm64"
      sha256 "7ed51f77e3f35e3705a67d0269038d81cda04ea53e51b02946a99b3ea76a0735"
    else
      url "https://static.ampcode.com/cli/0.0.1793260836-gdb4c2d/amp-darwin-x64"
      sha256 "ccde6e20714706c84820a71c25180adbfd930402eb92d40da1942add43269114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793260836-gdb4c2d/amp-linux-arm64"
      sha256 "1fbfb23b28344b394f3f04703bbac444ccb8bf4e738e908aa55c03078e9f5c14"
    else
      url "https://static.ampcode.com/cli/0.0.1793260836-gdb4c2d/amp-linux-x64"
      sha256 "a52a01f8c7a645579ff8a50d3ecc268f5f21fd6af9119764c6505d443ed58069"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
