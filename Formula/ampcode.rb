class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779547160-g4a1cc9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779547160-g4a1cc9/amp-darwin-arm64"
      sha256 "ff28cdbe8a6c4e80bbf6a52e04cd7048f9a9bea3c144b0586cd24fc8e56874db"
    else
      url "https://static.ampcode.com/cli/0.0.1779547160-g4a1cc9/amp-darwin-x64"
      sha256 "cb33a4d0dce4f2db69edb643c725c23a363de40ee65f0c29b01aefb878ee3462"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779547160-g4a1cc9/amp-linux-arm64"
      sha256 "8effa0e660eaa46d1b84e17f707718019e79e94571dd111a4d24018f9770549c"
    else
      url "https://static.ampcode.com/cli/0.0.1779547160-g4a1cc9/amp-linux-x64"
      sha256 "ac8c59e03323e4b6940136d76ecc1965f59a828c2154e9544eae4cf6f9be667a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
