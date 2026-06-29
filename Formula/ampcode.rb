class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782722780-g74997a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782722780-g74997a/amp-darwin-arm64"
      sha256 "60ec7513ed956daf0e0fa751a179462dd30dd2e27a2ca337c3cc700a59bb34d9"
    else
      url "https://static.ampcode.com/cli/0.0.1782722780-g74997a/amp-darwin-x64"
      sha256 "e597cd1cb536292c801268576812fa632ed52df895aa8d309d78293be6e8eabb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782722780-g74997a/amp-linux-arm64"
      sha256 "5f00b4ec2ebcc8981239a6241b850b56135425d43140f661e48be00c78221baf"
    else
      url "https://static.ampcode.com/cli/0.0.1782722780-g74997a/amp-linux-x64"
      sha256 "ceb3614456ebe439bd6544dd177740cfeacd2ca2dd0cf7721fbb260dca2a2946"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
