class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774973894-g4efe21"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774973894-g4efe21/amp-darwin-arm64"
      sha256 "e30d67ac2531afc267e0ed72dfa340d114132dd4ad97d778950602b3d4633891"
    else
      url "https://static.ampcode.com/cli/0.0.1774973894-g4efe21/amp-darwin-x64"
      sha256 "4bc4155c9bde050f575f49e528a4263e333a5cfc46b00b78a3732e249f2ea22c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774973894-g4efe21/amp-linux-arm64"
      sha256 "dffa91bba3727f86c434b32084c3303c82cde669ceea5619a66bbfb8d1118c33"
    else
      url "https://static.ampcode.com/cli/0.0.1774973894-g4efe21/amp-linux-x64"
      sha256 "1bc3bd61467c8518d64c8d0f880ff551a8ee543b190fc31dfe3f1eb5bf827867"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
