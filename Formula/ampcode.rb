class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777797045-g60c948"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777797045-g60c948/amp-darwin-arm64"
      sha256 "956f80e69efc9916ebef031f734bea6a89cd91f36a245f6a42f938a04a675986"
    else
      url "https://static.ampcode.com/cli/0.0.1777797045-g60c948/amp-darwin-x64"
      sha256 "be027eb4cf624e60626094f7072670ca882f5937a391d6068583d2c1b3240992"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777797045-g60c948/amp-linux-arm64"
      sha256 "38cb996fcd0841c51b555a59e07652281395089227fa0e445ebbae48555f8067"
    else
      url "https://static.ampcode.com/cli/0.0.1777797045-g60c948/amp-linux-x64"
      sha256 "1dc47bff421c4dc4213ab1d228de5eb3b20c667f304e9e2ab8c3ccabe6c8091a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
