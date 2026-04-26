class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777205314-gff69a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777205314-gff69a4/amp-darwin-arm64"
      sha256 "1f71886e5fe46b492e658ceffceca3a2f371ffd5a0dd0c352771e2a27a3a4fa1"
    else
      url "https://static.ampcode.com/cli/0.0.1777205314-gff69a4/amp-darwin-x64"
      sha256 "3cbb239d4e7e9fc2fa5b023076330a1eaf470d77f11d107d124aba67a2874f78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777205314-gff69a4/amp-linux-arm64"
      sha256 "18677ba8c050701b5d1172595f1be621400d775f6184a70fb4e946d1f0eda917"
    else
      url "https://static.ampcode.com/cli/0.0.1777205314-gff69a4/amp-linux-x64"
      sha256 "ce7b1812bb6331d93c1053ca10f2d334908ff388764e8d8bc1fa44cf919f34f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
