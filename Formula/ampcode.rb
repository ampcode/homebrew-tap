class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795060840-g663242"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795060840-g663242/amp-darwin-arm64"
      sha256 "26d16fa7ae95bd878762f2afeeabf11532682850eb0eb9e463e15328a6365fec"
    else
      url "https://static.ampcode.com/cli/0.0.1795060840-g663242/amp-darwin-x64"
      sha256 "2a30eda159e5e5bec9d988132c75b78c8636fc169829e5086a93c0c87ba73a03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795060840-g663242/amp-linux-arm64"
      sha256 "1162240bc0d298da04d23e8e7bbb8211bb8c8e35080c4510ed907eca489c5bd6"
    else
      url "https://static.ampcode.com/cli/0.0.1795060840-g663242/amp-linux-x64"
      sha256 "7db9cf7a3778b2589e965ba925bc27b6b5d0c8ef447b88af4d5149a2e831d490"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
