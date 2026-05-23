class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779553030-g34457f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779553030-g34457f/amp-darwin-arm64"
      sha256 "37a263ce236833c86eae56ad153a8dd2e3dccf165c053f48b918eee64e1a48ff"
    else
      url "https://static.ampcode.com/cli/0.0.1779553030-g34457f/amp-darwin-x64"
      sha256 "0848c203c997afe3149fede631900ebab06b547f2482618ac886ddc649d1ae5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779553030-g34457f/amp-linux-arm64"
      sha256 "54ed727eb17cb419914836893196e827ebdeb9354b31c3c2d754c202b29875c8"
    else
      url "https://static.ampcode.com/cli/0.0.1779553030-g34457f/amp-linux-x64"
      sha256 "c29931ff2f61ad6236bdaa246539ea5209aa4f965246eb0e42deb71cb6939bdc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
