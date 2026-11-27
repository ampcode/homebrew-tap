class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795809628-g8ae72c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795809628-g8ae72c/amp-darwin-arm64"
      sha256 "b525ba91b95de408918332198a3505018fa08964670eb6c092d472fde92b5127"
    else
      url "https://static.ampcode.com/cli/0.0.1795809628-g8ae72c/amp-darwin-x64"
      sha256 "b70b31fdb310a35588cf776dff7bba9637543539cf62556e032d9e7b5c899143"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795809628-g8ae72c/amp-linux-arm64"
      sha256 "94cef2bec6865a5bb7e0086a6c9ad1559805d35edf75167179dccb2a27b4e4b3"
    else
      url "https://static.ampcode.com/cli/0.0.1795809628-g8ae72c/amp-linux-x64"
      sha256 "b176d08449d20bba1fc16e5a08e8b3a3ad5bede2c438e4407a484e765e6d2874"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
