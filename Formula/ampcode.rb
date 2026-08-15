class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786786652-g202c96"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786786652-g202c96/amp-darwin-arm64"
      sha256 "e8009865ede5e323fd945a1ed7cd37074485f56881198f6d43ed36232f4154ef"
    else
      url "https://static.ampcode.com/cli/0.0.1786786652-g202c96/amp-darwin-x64"
      sha256 "a39c8bf27ba77c11c21e243f732dca3ea54803ec2b54a1489b471b9e92771a6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786786652-g202c96/amp-linux-arm64"
      sha256 "eefc43eb6e112d6f7d7808be2ac66b3881c2edbd3705ac25fbd971a3489a2bf6"
    else
      url "https://static.ampcode.com/cli/0.0.1786786652-g202c96/amp-linux-x64"
      sha256 "90921a6a348e839fd5f96f892cf07ee352c8238851db92bd8bab65ee63e532b4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
