class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791002600-g4efbc6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791002600-g4efbc6/amp-darwin-arm64"
      sha256 "b9b918eb1702acf3a97a84af630389f240e88e3a88cd344db3aa126b81227573"
    else
      url "https://static.ampcode.com/cli/0.0.1791002600-g4efbc6/amp-darwin-x64"
      sha256 "293c519bd891edc7e9b30213354f5d95ead9827ae61bc4c4a6cccd70acb5e6b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791002600-g4efbc6/amp-linux-arm64"
      sha256 "e4fd30211b10c1836111f947af96ec828f6b1ec6dcf5b9573ff35b09d836b142"
    else
      url "https://static.ampcode.com/cli/0.0.1791002600-g4efbc6/amp-linux-x64"
      sha256 "6f0430db5205d281bce1637ac62113fda0a487a79ea3b65f7720b7744d532c9c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
