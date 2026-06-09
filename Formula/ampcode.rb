class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781003299-g2fde29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781003299-g2fde29/amp-darwin-arm64"
      sha256 "f4ff10bf4d3e4ad756f276bbc57c5f99b46aa8672ee341827974f9c09b36258d"
    else
      url "https://static.ampcode.com/cli/0.0.1781003299-g2fde29/amp-darwin-x64"
      sha256 "7dd4abc194660786834970f2ad567e6b7a9094d7c40140751356a95e1343c19a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781003299-g2fde29/amp-linux-arm64"
      sha256 "a618352125d6973f60370fcb42e59f128b25237a98a468bb82f1a598a4c12f7a"
    else
      url "https://static.ampcode.com/cli/0.0.1781003299-g2fde29/amp-linux-x64"
      sha256 "0073b75ce151902ce2e76790632bc3cc1780438bd058b6240c4ab90f67427d43"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
