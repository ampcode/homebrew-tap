class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776329724-ga6b7e7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776329724-ga6b7e7/amp-darwin-arm64"
      sha256 "fa83e3db842ecb6cfea635a33ceedfed6d087c22fd28e071413fe26a91f8497c"
    else
      url "https://static.ampcode.com/cli/0.0.1776329724-ga6b7e7/amp-darwin-x64"
      sha256 "3dcd793a2e4bb039ff958358ed47953f164a580da031788dd220c8b448246bd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776329724-ga6b7e7/amp-linux-arm64"
      sha256 "3e27104153394c065491d70cc48196082e50466daa04e8d574071334ee4045fc"
    else
      url "https://static.ampcode.com/cli/0.0.1776329724-ga6b7e7/amp-linux-x64"
      sha256 "66925781476d930eeb82ce869249820629933c20fd315ed087573231b42f7220"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
