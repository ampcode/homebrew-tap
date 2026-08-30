class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788105629-g37d5d1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788105629-g37d5d1/amp-darwin-arm64"
      sha256 "aa23725a9d7adb216d4d08576d712b118b93458edf9484d132994fef3645804e"
    else
      url "https://static.ampcode.com/cli/0.0.1788105629-g37d5d1/amp-darwin-x64"
      sha256 "507ae96d02f9d91e6d941641d8afe186efe8f1a904743ecf9dab23cadb92a178"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788105629-g37d5d1/amp-linux-arm64"
      sha256 "21c95116fa949dccfee46683c325b89ca102a6c7fe000b5d6128a7bd9ee293b1"
    else
      url "https://static.ampcode.com/cli/0.0.1788105629-g37d5d1/amp-linux-x64"
      sha256 "864219998ab73c059a8b8210d55cb32137ee7f5c915484f02f547b3f199a23a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
