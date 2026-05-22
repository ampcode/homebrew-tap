class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779472071-g128112"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779472071-g128112/amp-darwin-arm64"
      sha256 "38802bfea929e0ca2693cd3d437339ed9ad4f54a0453f6ea9c3d88e489b2cbb1"
    else
      url "https://static.ampcode.com/cli/0.0.1779472071-g128112/amp-darwin-x64"
      sha256 "35e61ed945cc696dbb56c3f692c04f197ca5f9b0a86fa10abfd1c7b4687725f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779472071-g128112/amp-linux-arm64"
      sha256 "48c1bf9024a2d4250a7d97ee0d03cf5bc812db1c7ff459b26f5e6781512d36e6"
    else
      url "https://static.ampcode.com/cli/0.0.1779472071-g128112/amp-linux-x64"
      sha256 "1c1971ba5a041ea45f17dfb6efe639c577f6c2c263b3ad6a4797739c20deaa4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
