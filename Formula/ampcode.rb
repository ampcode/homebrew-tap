class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788264042-g14606a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788264042-g14606a/amp-darwin-arm64"
      sha256 "812d210590f46cf2fc0dbae36a7f8916d3ada53ef297a9de78d9dc43c6db93e5"
    else
      url "https://static.ampcode.com/cli/0.0.1788264042-g14606a/amp-darwin-x64"
      sha256 "257c6b6771b55a6156821e1b2ca145704f4f4910bdad4bc110d7720e4906e0e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788264042-g14606a/amp-linux-arm64"
      sha256 "342f0e5a088847132690d539fcc3f5513c22c402d5956b35e1fceacb9bfb045a"
    else
      url "https://static.ampcode.com/cli/0.0.1788264042-g14606a/amp-linux-x64"
      sha256 "dbaf3ce657662df5e6f7781c31215215f0025f1d9faec0f6f5e1107b37272b15"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
