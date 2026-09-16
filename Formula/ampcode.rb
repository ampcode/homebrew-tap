class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789574469-gaef7d6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789574469-gaef7d6/amp-darwin-arm64"
      sha256 "26969969306654ad07e528668dc9c53b3ff354bc4c011a02ed00120000c8da13"
    else
      url "https://static.ampcode.com/cli/0.0.1789574469-gaef7d6/amp-darwin-x64"
      sha256 "f3450accf8c2c57736c90f022e6a621120b669a7e954ac9c2ca97269746b874e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789574469-gaef7d6/amp-linux-arm64"
      sha256 "8436fca3d0f299580bf1f8d9f9f2934da027611d9fd227e698971e40c4825aeb"
    else
      url "https://static.ampcode.com/cli/0.0.1789574469-gaef7d6/amp-linux-x64"
      sha256 "a8054557acfa18daf5a1cecfedce8442efd15d865ab56acb03c143c6de9df2a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
