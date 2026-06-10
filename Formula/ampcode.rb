class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781056698-gab77f1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781056698-gab77f1/amp-darwin-arm64"
      sha256 "f0422037f2c95655a2aac48379388740343738bf1e5b2eafb231a296f0915a2e"
    else
      url "https://static.ampcode.com/cli/0.0.1781056698-gab77f1/amp-darwin-x64"
      sha256 "edd967286259d0224f5e8284746590381a3e731156646dafb7930e4308389282"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781056698-gab77f1/amp-linux-arm64"
      sha256 "49e4b37c1ba8520735c3a39cb0f5d5aa6ced8a170b0a0fcf4e5483f940c03662"
    else
      url "https://static.ampcode.com/cli/0.0.1781056698-gab77f1/amp-linux-x64"
      sha256 "e93a03567f025422c65d7a1175f95fa929fc75cca511d3db01429d8b441c598e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
