class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779538391-ge68d87"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779538391-ge68d87/amp-darwin-arm64"
      sha256 "bd16c5d5ea949d833ecbbcc3000c4e35efdd07914b4ca725d05abb06eb321a35"
    else
      url "https://static.ampcode.com/cli/0.0.1779538391-ge68d87/amp-darwin-x64"
      sha256 "775d3151b0b0c884adac75b1cb628373b900f31c8797febf9c213e4b51315f1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779538391-ge68d87/amp-linux-arm64"
      sha256 "afa4c3e746d012ef34f0d03f640700f82218dab693c50a5d8cf09e7a32cfb6cb"
    else
      url "https://static.ampcode.com/cli/0.0.1779538391-ge68d87/amp-linux-x64"
      sha256 "a6bba7b34fdc071fd9dda8b7adb2749f5b5cb9e053db76b46015b9f3799cef70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
