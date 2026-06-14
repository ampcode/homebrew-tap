class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781424348-g140afa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781424348-g140afa/amp-darwin-arm64"
      sha256 "ab56c2e2e209ce90517cde98fc528ab88817a1f1f4a586e1bbc95bd5e3a42438"
    else
      url "https://static.ampcode.com/cli/0.0.1781424348-g140afa/amp-darwin-x64"
      sha256 "8a8b213d7174db3c5bfde4a1da1782f4ae683582a9aa0a18977331980c8240e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781424348-g140afa/amp-linux-arm64"
      sha256 "1f917abf8fb899894c5c4de5ce129d899e2a3025ea592e25ea1632384462ad15"
    else
      url "https://static.ampcode.com/cli/0.0.1781424348-g140afa/amp-linux-x64"
      sha256 "73977fe189b53c14dc0be5bab7a02d7f0f93fbd34d3142de23b8925f5886f4c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
