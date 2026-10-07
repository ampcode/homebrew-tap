class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791360091-gfb32ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791360091-gfb32ce/amp-darwin-arm64"
      sha256 "8c5a09e8244de9718f8479dd5621ceaa0c5351252e811a67f60f9d4362c8fbf5"
    else
      url "https://static.ampcode.com/cli/0.0.1791360091-gfb32ce/amp-darwin-x64"
      sha256 "0bd79ef93e6c4d86483018bb3ee032269b412a5964bbe06c9ff2ba7e1f653fdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791360091-gfb32ce/amp-linux-arm64"
      sha256 "95b8ae10361cf1127cf8b0330b15eee2955bbe3ab919340b8260ed467da07b64"
    else
      url "https://static.ampcode.com/cli/0.0.1791360091-gfb32ce/amp-linux-x64"
      sha256 "010729394ffaaef90f6772fdeb864fe3c73eaf81926a029723f90d4ffb1f4d4e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
