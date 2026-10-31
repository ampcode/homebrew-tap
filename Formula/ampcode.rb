class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793476832-ga2d2ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793476832-ga2d2ae/amp-darwin-arm64"
      sha256 "3fb5b0582ccaa938fc900c6ce49e827344034ac14ec397149e80a6d5e3d80faa"
    else
      url "https://static.ampcode.com/cli/0.0.1793476832-ga2d2ae/amp-darwin-x64"
      sha256 "c3e2a6373bf7fdf09d74da7bf57a3a7f86434da801357df220cbd9dcf557ef97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793476832-ga2d2ae/amp-linux-arm64"
      sha256 "2f18b8bd010704befeca3968e559dff02051ba0cac840194de1ac5bb0e480b74"
    else
      url "https://static.ampcode.com/cli/0.0.1793476832-ga2d2ae/amp-linux-x64"
      sha256 "8c43cea70ab7006005ce07c5c5f809b02b6acbf40f41c308524204a6ef51d9a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
