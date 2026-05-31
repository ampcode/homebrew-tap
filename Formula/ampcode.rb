class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780186756-g629f87"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780186756-g629f87/amp-darwin-arm64"
      sha256 "a3edd88afe3c75c0ec349a3be6633d693f188c828a18742a29f93c23451efae4"
    else
      url "https://static.ampcode.com/cli/0.0.1780186756-g629f87/amp-darwin-x64"
      sha256 "f75cedbeb66f266e27a54b0476dc0ba295eebfcf6885f4e41557b343b0e701d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780186756-g629f87/amp-linux-arm64"
      sha256 "6481f9222a91b13c0708ae94907d2c7c2a8a635d6b1ecb8817ab7d835822bada"
    else
      url "https://static.ampcode.com/cli/0.0.1780186756-g629f87/amp-linux-x64"
      sha256 "adbfc213e7a0e57fe2fb8782b9c2911f706bbbbfe5f82e64c0995d1380e9682d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
