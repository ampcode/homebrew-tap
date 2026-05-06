class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778098934-g93346e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778098934-g93346e/amp-darwin-arm64"
      sha256 "5b7351ac4cf0b06ff3433c6024293d547755da14865367983eb0642dd02685c8"
    else
      url "https://static.ampcode.com/cli/0.0.1778098934-g93346e/amp-darwin-x64"
      sha256 "0e21787a0908273e26bcd0148d027bed3519480d7cbefee809d4265008765d67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778098934-g93346e/amp-linux-arm64"
      sha256 "a1114cdfb0c1f4924be72ccbb4ee565173eff64726e6edd40c9129882aa9493e"
    else
      url "https://static.ampcode.com/cli/0.0.1778098934-g93346e/amp-linux-x64"
      sha256 "50dd4f56c47bb19bff3284260b5d58e53250bd1d7ab54be7872b0d81860e8f52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
