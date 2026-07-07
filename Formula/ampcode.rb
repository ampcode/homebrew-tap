class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783447335-g81d8eb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783447335-g81d8eb/amp-darwin-arm64"
      sha256 "c563d07808bc0cbf1b483156796e3064ee0d06e0b08d3800819e64a3516f9f80"
    else
      url "https://static.ampcode.com/cli/0.0.1783447335-g81d8eb/amp-darwin-x64"
      sha256 "08bb9808d0a0d9d1605eb121c9c1ea081b64b068206d005fa4f38a4609590c61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783447335-g81d8eb/amp-linux-arm64"
      sha256 "13636a4194a88e25fed76756d18c02680f8ca889e494df4543330aa961b2001d"
    else
      url "https://static.ampcode.com/cli/0.0.1783447335-g81d8eb/amp-linux-x64"
      sha256 "9fd0d39fa987ba9ce84ead453cf0489e199d27f7a005a6bf1c567fffbd5468dc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
