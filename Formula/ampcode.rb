class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786709501-g09381a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786709501-g09381a/amp-darwin-arm64"
      sha256 "501d5c800ad1c41449d4277915961be8d456d2f4faf608c84ab54289552bdd2e"
    else
      url "https://static.ampcode.com/cli/0.0.1786709501-g09381a/amp-darwin-x64"
      sha256 "875c64a48482a9220666359cca407bcdc0bedae74e7c088a3fa9ac8926344dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786709501-g09381a/amp-linux-arm64"
      sha256 "66958ee5337d2abcdb29b76bece64b8fa532a815c27b5ca1e0a7457321435583"
    else
      url "https://static.ampcode.com/cli/0.0.1786709501-g09381a/amp-linux-x64"
      sha256 "3967c3a0bd60c961431f7fe1c8a21219770d5d4e2b42249c36b77880b9999ecb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
