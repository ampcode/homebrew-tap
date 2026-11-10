class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794312042-g538cd5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794312042-g538cd5/amp-darwin-arm64"
      sha256 "0394d5d6ae166f1138a9d96177ccacb63cfbffe4aec3114129c9e0957b733b59"
    else
      url "https://static.ampcode.com/cli/0.0.1794312042-g538cd5/amp-darwin-x64"
      sha256 "5b3c20b45822f97a943d69bd1a7de46df73697571dcc426f8002c8c16347f498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794312042-g538cd5/amp-linux-arm64"
      sha256 "4211616c6b43ba39fb8ea0e8bd67f37d354d016a041ad5b590501a531851894a"
    else
      url "https://static.ampcode.com/cli/0.0.1794312042-g538cd5/amp-linux-x64"
      sha256 "640421892ca0c62466003a99e3a65904757a2e58bb1eaca384b0a9f1cdc67e6b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
