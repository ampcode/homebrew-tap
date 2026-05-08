class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778271488-ge54a40"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778271488-ge54a40/amp-darwin-arm64"
      sha256 "119e91523511fdcd91441415044335045404ab433e75301c8e5e3e91effce9b5"
    else
      url "https://static.ampcode.com/cli/0.0.1778271488-ge54a40/amp-darwin-x64"
      sha256 "b9cbcb3164bd0ad0bd8596516321dc9b70d1f9208c22e1ec18817dde410a813c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778271488-ge54a40/amp-linux-arm64"
      sha256 "00becbbfa293710c9392edf31a0b9280c8ed722cfa3277284fc7718f69227734"
    else
      url "https://static.ampcode.com/cli/0.0.1778271488-ge54a40/amp-linux-x64"
      sha256 "1dba51a21863515e03cf42b5206c9e36c9a902300c8b2190901c7653eb231dfe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
