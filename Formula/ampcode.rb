class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792180867-g4437d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792180867-g4437d4/amp-darwin-arm64"
      sha256 "a2d06e462a4c5e2214ff125d2cd68ac8aaf48ae0824c899fe6f57166a1222a7a"
    else
      url "https://static.ampcode.com/cli/0.0.1792180867-g4437d4/amp-darwin-x64"
      sha256 "8cfaa9c445cf9fbe6d9009359951f722ecb114c259dc8acc4e485014e16e74e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792180867-g4437d4/amp-linux-arm64"
      sha256 "0b9fd212e8f91f8395f9e9b4d7c887033f1fd58702f3abcf72b2327fc5cf16d2"
    else
      url "https://static.ampcode.com/cli/0.0.1792180867-g4437d4/amp-linux-x64"
      sha256 "5ae1c8b764f4bdfe4785b935fa56dd7a4eac1da38438a846e18d5790ecc153e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
