class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795204834-g00d70a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795204834-g00d70a/amp-darwin-arm64"
      sha256 "4fda8ec77181ea1de442118a36c4cc1a80f6cab64833dde5a415d9956c64a10d"
    else
      url "https://static.ampcode.com/cli/0.0.1795204834-g00d70a/amp-darwin-x64"
      sha256 "5d4fceb072e080c66a8d569183b83a9eff490c5c85e46029b84edd6a55f7b9fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795204834-g00d70a/amp-linux-arm64"
      sha256 "fb8e55088a34bd256eed7ba9998542c9d87464f3136825d1092776f7e2a42a30"
    else
      url "https://static.ampcode.com/cli/0.0.1795204834-g00d70a/amp-linux-x64"
      sha256 "d7eb9f2f7ebf025287373f8b99b82ab160d7f7f53702909411e17eebf3ed9bb9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
