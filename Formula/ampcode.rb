class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786219538-g8a5763"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786219538-g8a5763/amp-darwin-arm64"
      sha256 "9225db29bb4701e8fcdc7df9289226790dfd5d6638e71075daf62f9af1b867cf"
    else
      url "https://static.ampcode.com/cli/0.0.1786219538-g8a5763/amp-darwin-x64"
      sha256 "9d5170c8fa5673f324611eac16535ca0c0ec51b993d5f52b15c14d5041a7ffbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786219538-g8a5763/amp-linux-arm64"
      sha256 "0df11c1dc518208fb454dc32a155bbdc7c8bc90fc501a855d8e77bad5eb96ee6"
    else
      url "https://static.ampcode.com/cli/0.0.1786219538-g8a5763/amp-linux-x64"
      sha256 "3f4693d3fcb3ed32b44ed891178ba217a5e4fa23b8def8261a580cae201df31e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
