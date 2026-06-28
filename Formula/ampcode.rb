class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782665646-g2f0017"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782665646-g2f0017/amp-darwin-arm64"
      sha256 "6a518a7c93ed6830c845816b39f0abc14eb4e3752d40224a4c1937d786ffd549"
    else
      url "https://static.ampcode.com/cli/0.0.1782665646-g2f0017/amp-darwin-x64"
      sha256 "93d0a009798b10f925ee2db8a47d7d1e9db119b7eac9c6d0442ab005b2023f28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782665646-g2f0017/amp-linux-arm64"
      sha256 "d75a43a9385e032d2f65d4f1b539e2f467bd4c7dfff6787dd224d0a1f9dd5665"
    else
      url "https://static.ampcode.com/cli/0.0.1782665646-g2f0017/amp-linux-x64"
      sha256 "76382f3809213fd56a2d39a9a340dbb8eec502c39cdb59344edcbdcb6bbe76cb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
