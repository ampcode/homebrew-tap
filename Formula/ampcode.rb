class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793001982-gb50f4b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793001982-gb50f4b/amp-darwin-arm64"
      sha256 "bd5709b1c9b9444993331dfb72aee3308b109cf3f84f521f6eab461ddd7053c2"
    else
      url "https://static.ampcode.com/cli/0.0.1793001982-gb50f4b/amp-darwin-x64"
      sha256 "fa6768b92243793b12a43c0e2067cf8b2d574cc12bae33324ae74175386616ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793001982-gb50f4b/amp-linux-arm64"
      sha256 "2743c95732df7e6cba0c84f72e257206281c57933856a3b39ecedfc7162a062a"
    else
      url "https://static.ampcode.com/cli/0.0.1793001982-gb50f4b/amp-linux-x64"
      sha256 "7bb1f5b9f5c6c5a75c6ee2e3948ecbf22d5562109c3d565650b16ffc47fc506e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
