class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782593174-g03e27d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782593174-g03e27d/amp-darwin-arm64"
      sha256 "9af3d2b9ef6580e3cd45d25e27a8137fb588fd27629b44a368bb95a27d8ac078"
    else
      url "https://static.ampcode.com/cli/0.0.1782593174-g03e27d/amp-darwin-x64"
      sha256 "9dbccc500231841627f9f265183997fac39e7f4b57cdccc0125390125fb09f28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782593174-g03e27d/amp-linux-arm64"
      sha256 "0da8749c28e7fdad6d7a3a87dbde89c589b15c96f5bf7111ce13a0d886b7993e"
    else
      url "https://static.ampcode.com/cli/0.0.1782593174-g03e27d/amp-linux-x64"
      sha256 "357c6349bbe6de91666294de9a9057d2f15fcbf7377cb92181898120012e8470"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
