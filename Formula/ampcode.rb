class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782120930-g64087b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782120930-g64087b/amp-darwin-arm64"
      sha256 "796414d255d80a1f9f6114f277dae39a4174025e4d3d4c0cf62753484e55578f"
    else
      url "https://static.ampcode.com/cli/0.0.1782120930-g64087b/amp-darwin-x64"
      sha256 "0a6880ed20866a56d93644db654328edbd52c91751a54cdafc53ba0262376dd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782120930-g64087b/amp-linux-arm64"
      sha256 "f482621521f4ea5dc78bfa968014caf520727908188b36071372d663cc808188"
    else
      url "https://static.ampcode.com/cli/0.0.1782120930-g64087b/amp-linux-x64"
      sha256 "aeaa02f17ab2990c496e2972c9c2d974ff9307162cb727ca4eb05841a170ba36"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
