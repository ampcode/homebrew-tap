class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791763306-ged595a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791763306-ged595a/amp-darwin-arm64"
      sha256 "b2094122afc7ca1fa7cd86c491f2774b9007a6ba88a88049b1cfceb43c19f5b0"
    else
      url "https://static.ampcode.com/cli/0.0.1791763306-ged595a/amp-darwin-x64"
      sha256 "ae205d8f24ca7bd27cc7afefdc96b16ec32e1017a53db665968b9b8f50d8878c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791763306-ged595a/amp-linux-arm64"
      sha256 "472e24ad599cc7f67ca1c66b4ab9c4099fd8dc3441e0cc01078ef72041cd9879"
    else
      url "https://static.ampcode.com/cli/0.0.1791763306-ged595a/amp-linux-x64"
      sha256 "806338d1b337300dbbf5941b97e109de094f2931afa87b709f078d042e973473"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
