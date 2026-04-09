class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775727582-g678770"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775727582-g678770/amp-darwin-arm64"
      sha256 "f920d5859ec37309428af0ae55bb8544f225bfced0b94ad3f07a13a351856894"
    else
      url "https://static.ampcode.com/cli/0.0.1775727582-g678770/amp-darwin-x64"
      sha256 "6283753df6c3bd723c8a6aede9f3c2e94ff8b0f36757ad8dcb868c3b379eb5db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775727582-g678770/amp-linux-arm64"
      sha256 "9e8d5a919b741bebc7d2624aeedbd82bfb865db7f0ef1845250cc24de9c18ca4"
    else
      url "https://static.ampcode.com/cli/0.0.1775727582-g678770/amp-linux-x64"
      sha256 "f957ebb9a56c24db8a2f270b7c090cd991a5d9f32e63df6e16002e77f06ca844"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
