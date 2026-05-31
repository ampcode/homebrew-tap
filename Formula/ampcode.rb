class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780230108-g6b52f9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780230108-g6b52f9/amp-darwin-arm64"
      sha256 "7d30192423640bde77dbd3c9e85f192ee7d35a4ed9e5510f5c4d89b4095ae44a"
    else
      url "https://static.ampcode.com/cli/0.0.1780230108-g6b52f9/amp-darwin-x64"
      sha256 "31254cc91e8d44258bafef73c9cbd9c9d068debb799a7acdb8785ba80824babf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780230108-g6b52f9/amp-linux-arm64"
      sha256 "ebe2dd926e87d1ae346a3d6a292734e894f73da349b67e364d99173e6c5125a0"
    else
      url "https://static.ampcode.com/cli/0.0.1780230108-g6b52f9/amp-linux-x64"
      sha256 "a2da6211f1396121b630f707f25fb176f29f248b1467744e13922bb4c96176e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
