class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780014135-gb8f1f5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780014135-gb8f1f5/amp-darwin-arm64"
      sha256 "5719fdd593afa7460d686d0933b6fff40fa2efa8d24fcb47b18aa2a60f9a1282"
    else
      url "https://static.ampcode.com/cli/0.0.1780014135-gb8f1f5/amp-darwin-x64"
      sha256 "e2c43d49c49e5d9e8d5cdb767b936984993cbe095b04606a8465364d40069733"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780014135-gb8f1f5/amp-linux-arm64"
      sha256 "512af4e0daa820f89edcc151e60cb5a8ddbc4f330b43faccaa38eeeac2452397"
    else
      url "https://static.ampcode.com/cli/0.0.1780014135-gb8f1f5/amp-linux-x64"
      sha256 "8d150f36f87599cec1d21752fca002d2cd2df32b4ff61e00e35de6eaefe0fc2a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
