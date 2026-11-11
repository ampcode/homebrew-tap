class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794390421-g591165"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794390421-g591165/amp-darwin-arm64"
      sha256 "14c4c9f0775059a00af993e9f3625e6b7f09ef56b33e08ca4d3916e8b031e7e5"
    else
      url "https://static.ampcode.com/cli/0.0.1794390421-g591165/amp-darwin-x64"
      sha256 "51109bd51df615d0a8c212b2d5bc077ee78ab05b8a0a61fb88cf99a5062dc964"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794390421-g591165/amp-linux-arm64"
      sha256 "7afacded1c30695d78a4c7928bf877752edbc648084483209d58124d1dd4ae79"
    else
      url "https://static.ampcode.com/cli/0.0.1794390421-g591165/amp-linux-x64"
      sha256 "108ef10bbec92d006a70160f9643f65ab4662a0ec9bbf906d23063bec9662157"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
