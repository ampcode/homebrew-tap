class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789747235-gc86aff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789747235-gc86aff/amp-darwin-arm64"
      sha256 "05d695a79bab090b13506c7e5834dbed9e51d1302c8452832467c10ab29aafa7"
    else
      url "https://static.ampcode.com/cli/0.0.1789747235-gc86aff/amp-darwin-x64"
      sha256 "5ce82783fc61e93abc8aab4737dec5bf00f4da7f75e70a7299adad1aa573c8b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789747235-gc86aff/amp-linux-arm64"
      sha256 "0aeeb1b665461decb7de797b3d082bec54b2df762e2a5c544919fd7bc53ed643"
    else
      url "https://static.ampcode.com/cli/0.0.1789747235-gc86aff/amp-linux-x64"
      sha256 "fa1a1a33bff234884311d9d789c4d90d87096587a2886109c1159b8b35901e2c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
