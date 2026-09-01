class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788249635-gcc0420"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788249635-gcc0420/amp-darwin-arm64"
      sha256 "d0a993b9a6beddf211ba397df5a518d28e98e2813f05cb6f06854172cb00698d"
    else
      url "https://static.ampcode.com/cli/0.0.1788249635-gcc0420/amp-darwin-x64"
      sha256 "de3d71e40b9a76e9447661433a623ee0077e5d220f868016cefa410c5184d98d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788249635-gcc0420/amp-linux-arm64"
      sha256 "3cd35699b2fce9c59c61909858637b2a657b9f7f82eb851029886d69cf29b9ff"
    else
      url "https://static.ampcode.com/cli/0.0.1788249635-gcc0420/amp-linux-x64"
      sha256 "4b2a63ce10efbf88d1b14fe957626f37a04211f3214440dba3d1aae48a848427"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
