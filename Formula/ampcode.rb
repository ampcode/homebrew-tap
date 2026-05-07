class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778143766-gf8b20a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778143766-gf8b20a/amp-darwin-arm64"
      sha256 "bb141d072bdc537745c496aea24aeaf1d5953feee6039384315c379759fa4e25"
    else
      url "https://static.ampcode.com/cli/0.0.1778143766-gf8b20a/amp-darwin-x64"
      sha256 "f676d8539a0eeb75ac85c56e1f0d97531a99625a65556de22a64ddfcf33f7cb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778143766-gf8b20a/amp-linux-arm64"
      sha256 "cb24095c331afdf006e0e8403017fcb7c2eda284de30abce9ef07f99bd6c4d43"
    else
      url "https://static.ampcode.com/cli/0.0.1778143766-gf8b20a/amp-linux-x64"
      sha256 "d9770e9e791b510700f1537adaaec76a95164cb472eac24dae6e13040758d872"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
