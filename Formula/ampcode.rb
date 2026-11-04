class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793829508-g91ac5b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793829508-g91ac5b/amp-darwin-arm64"
      sha256 "678b85a7d74c697283e2385fcec25ea4544d709e1645390f4ee11176b1baa406"
    else
      url "https://static.ampcode.com/cli/0.0.1793829508-g91ac5b/amp-darwin-x64"
      sha256 "327e530fa0349a436a8855c0e8c6e6a424853fbc8d4296ac9e957d03b5fe20d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793829508-g91ac5b/amp-linux-arm64"
      sha256 "8a7e533eb726bb418a0d1059c0fc16207b9c17e933c27ee503241fceadf80907"
    else
      url "https://static.ampcode.com/cli/0.0.1793829508-g91ac5b/amp-linux-x64"
      sha256 "21306fe20066143146f3f01a75d44cc201157edeb59f391461886f7f9050f591"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
