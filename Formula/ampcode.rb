class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787083307-g3b8169"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787083307-g3b8169/amp-darwin-arm64"
      sha256 "107308480332be766ac48bbad61bfb659bdcf8b38d9f6dfadbcd9585e251076e"
    else
      url "https://static.ampcode.com/cli/0.0.1787083307-g3b8169/amp-darwin-x64"
      sha256 "add96813922e2d11a9bfb8a6123b4a99165762040126cb5a6b990fc469ee6a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787083307-g3b8169/amp-linux-arm64"
      sha256 "e5357c1101267e8ccc88b647b09c5763e77c722925669a20c6041eff32e40756"
    else
      url "https://static.ampcode.com/cli/0.0.1787083307-g3b8169/amp-linux-x64"
      sha256 "b14f86e6fc9496da67c24d5ae15784a65ef8a00d315b11e70cfb90b1d37ce18c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
