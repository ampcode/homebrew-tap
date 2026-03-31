class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774971219-g0fd6a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774971219-g0fd6a8/amp-darwin-arm64"
      sha256 "f46fd242fb999145d2702270f208b3d094efe6c52a0f477a0a258a66c41b063c"
    else
      url "https://static.ampcode.com/cli/0.0.1774971219-g0fd6a8/amp-darwin-x64"
      sha256 "890ebef5a87aa4ed0ba068c68b1d48ca9264a3770033475e415f00fa84137555"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774971219-g0fd6a8/amp-linux-arm64"
      sha256 "01a9954c93dfc5d9b845ffaf71770b176ec065855ff85804afba1f2f97fa4940"
    else
      url "https://static.ampcode.com/cli/0.0.1774971219-g0fd6a8/amp-linux-x64"
      sha256 "2767ef0d9305f9d6a6bfdc57e74ae6fb21830143847ad134035e351b3029d72c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
