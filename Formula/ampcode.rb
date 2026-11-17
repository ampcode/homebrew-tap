class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794902432-g4bb8c8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794902432-g4bb8c8/amp-darwin-arm64"
      sha256 "9f5b5360093f21cc27f4b87cdc1bf8c6aa7284099e5529b9f8f1214c5a8c7df0"
    else
      url "https://static.ampcode.com/cli/0.0.1794902432-g4bb8c8/amp-darwin-x64"
      sha256 "a8eecfdea2720e802cb265e4cd753d8055a438db853b8ab3377c1008fd273b60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794902432-g4bb8c8/amp-linux-arm64"
      sha256 "546e4e1f01783dd4fd567d48020d12f81959497b32e7942cc1d050973b2e657f"
    else
      url "https://static.ampcode.com/cli/0.0.1794902432-g4bb8c8/amp-linux-x64"
      sha256 "ff67196339d64173fb7845eb26f509a2408c90e54b3f63c1d8ea9924a4e3ec53"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
