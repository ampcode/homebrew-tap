class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778570893-g6b8a9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778570893-g6b8a9a/amp-darwin-arm64"
      sha256 "9b02bd2cd7e7b7d76096387a612e38dfe363d574484ac8fe83edeeac3ba90621"
    else
      url "https://static.ampcode.com/cli/0.0.1778570893-g6b8a9a/amp-darwin-x64"
      sha256 "c88dc1ff688b923658ab51cdbc96ade9ab120e81daeb041fd04d4bb82598c074"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778570893-g6b8a9a/amp-linux-arm64"
      sha256 "f5caccef77271bb63b6e03966eea6ca305b1e21cd7b69cf4d82bc3db75ea1995"
    else
      url "https://static.ampcode.com/cli/0.0.1778570893-g6b8a9a/amp-linux-x64"
      sha256 "250434304314352f088bd964b9ba9358e0de606aa41efe57fa678481ef0782d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
