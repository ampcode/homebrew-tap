class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778854009-ga80691"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778854009-ga80691/amp-darwin-arm64"
      sha256 "dcb472342a5883cb667eb40768b1817ce9f93984c9758fc0fa61f589045fe092"
    else
      url "https://static.ampcode.com/cli/0.0.1778854009-ga80691/amp-darwin-x64"
      sha256 "4e970fa2c397005c821fa38e9c074d0e22bf0e05e4972ad950008220b855c539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778854009-ga80691/amp-linux-arm64"
      sha256 "00ce2d5360e97e7b0c2f7c1e7a035d4bd63a4612288e308cca24be0ad5bf7ed2"
    else
      url "https://static.ampcode.com/cli/0.0.1778854009-ga80691/amp-linux-x64"
      sha256 "c56e7b0f61275c1316b8548dd8330a787dc6093b8027bb0271df86fd711b502e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
