class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778046672-g9377da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778046672-g9377da/amp-darwin-arm64"
      sha256 "947be5bd0f888b251dee04d40366308d923b3e804ad6b4e05e55150090cd0883"
    else
      url "https://static.ampcode.com/cli/0.0.1778046672-g9377da/amp-darwin-x64"
      sha256 "8e3de4e08b313fd81e1f408587f9b6023b56cb699da058e492d911fd024122fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778046672-g9377da/amp-linux-arm64"
      sha256 "c89ca7a516d9d5fa6e565a3a8269da858664fcd9ef3dd4b3611fe24a744e9a01"
    else
      url "https://static.ampcode.com/cli/0.0.1778046672-g9377da/amp-linux-x64"
      sha256 "41233a360690b4d962cb6d9604fa93e67eece01a424bab379beed67b0b8770e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
