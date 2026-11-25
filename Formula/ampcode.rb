class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795636836-g0a818e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795636836-g0a818e/amp-darwin-arm64"
      sha256 "d1506cfdfb4b843e0f2e569e65a550c69adbcf422ff6175d595b79e5703cc6cc"
    else
      url "https://static.ampcode.com/cli/0.0.1795636836-g0a818e/amp-darwin-x64"
      sha256 "fe5c1b48be2dd0caa20eb7652d0907a78c560562988e15f7e54a7e35bd4ef9e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795636836-g0a818e/amp-linux-arm64"
      sha256 "3c704d9f23feef3c93315574c0d069fb9fa727e973e465ba3c690301451c8708"
    else
      url "https://static.ampcode.com/cli/0.0.1795636836-g0a818e/amp-linux-x64"
      sha256 "7606c606d00fb66d9fdef136bbc2fae480c569b748f882114d43a08630104024"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
