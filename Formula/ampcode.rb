class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781642777-g95229b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781642777-g95229b/amp-darwin-arm64"
      sha256 "1cc7a40bbab004971eaf06e2bf5b2acac7076090196eea9fde6668fda7b69fc8"
    else
      url "https://static.ampcode.com/cli/0.0.1781642777-g95229b/amp-darwin-x64"
      sha256 "2fb2ee9ff56dd0bf0b65c3687ed2241714ce7ff30ea25ba16917c1832320a1e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781642777-g95229b/amp-linux-arm64"
      sha256 "8f3f488f0b947f9550abf673a0c329169e71b2ac86bcd396dbbb7116842275b0"
    else
      url "https://static.ampcode.com/cli/0.0.1781642777-g95229b/amp-linux-x64"
      sha256 "3041e91199646588f52cbedab74aab1a648f22a78ff771a4e9ec6f0e607b8193"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
