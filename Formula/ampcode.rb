class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776298308-g07bca0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776298308-g07bca0/amp-darwin-arm64"
      sha256 "87c7ae183368df07849bd3032d80f2a51d429e6d5f06304519decf1213ab5fab"
    else
      url "https://static.ampcode.com/cli/0.0.1776298308-g07bca0/amp-darwin-x64"
      sha256 "742a763cf289006799a4a8cc7ba2cb8580f26e12f6a861bc7e0ad8b796d4e8a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776298308-g07bca0/amp-linux-arm64"
      sha256 "ad8309664ea68d714d91d31b7f17319924ab1eb7e25df052b112fe42ffda9bfa"
    else
      url "https://static.ampcode.com/cli/0.0.1776298308-g07bca0/amp-linux-x64"
      sha256 "322f58547d6d67f1c6b23d24b46427a79831ba16d6c8dc3ac551e8ce58fe7a8f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
