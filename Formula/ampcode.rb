class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775067946-g9d30f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775067946-g9d30f6/amp-darwin-arm64"
      sha256 "7502e55bf6c5a1b9c940d6d3f16a4dde62f45a2fce8a4fb7916bf58016a42e00"
    else
      url "https://static.ampcode.com/cli/0.0.1775067946-g9d30f6/amp-darwin-x64"
      sha256 "e716711caff9ad62d05747f37f9cb79121f30944215bb70aadb2c21189dc1400"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775067946-g9d30f6/amp-linux-arm64"
      sha256 "63d00c5b0e6a7ee1851446126600b9ed7a574ce5959503761d83ef1e9d1b5145"
    else
      url "https://static.ampcode.com/cli/0.0.1775067946-g9d30f6/amp-linux-x64"
      sha256 "05ca11641a1b7df042d1e0f50e3550c10e6a476933e6c1e36b77fdb0a254e471"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
