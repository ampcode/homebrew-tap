class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785142937-gb7c681"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785142937-gb7c681/amp-darwin-arm64"
      sha256 "bc6d170b1b24f52adc68774225ad54a71cdf1c82b9402073c70b1cb6e6659f75"
    else
      url "https://static.ampcode.com/cli/0.0.1785142937-gb7c681/amp-darwin-x64"
      sha256 "d22af27f7f88d7472ce2e0b8caa611e320835fbd3e04c254971aae516b138368"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785142937-gb7c681/amp-linux-arm64"
      sha256 "6a7db6405c82d626635fb6ec18d13c4ac0b688436ee730a309ca640881c667ea"
    else
      url "https://static.ampcode.com/cli/0.0.1785142937-gb7c681/amp-linux-x64"
      sha256 "a5ae59c19ce26fe3d3262dd7a98f4aa5231e0c86ce6d956e9e42582397681bc5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
