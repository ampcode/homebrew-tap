class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785082702-g120b8b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785082702-g120b8b/amp-darwin-arm64"
      sha256 "36926cb682c0d78bf520a5edc3d15f41f074b577601d078edf1f5b6316db5770"
    else
      url "https://static.ampcode.com/cli/0.0.1785082702-g120b8b/amp-darwin-x64"
      sha256 "bb6e3129289bd7d8b643979d29c01089f0c3bee6df601ea9206da3e04f3cf3f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785082702-g120b8b/amp-linux-arm64"
      sha256 "8de38ed389efbbb88497942f7ebef2df825f418ba6fd0e1391793357934075c3"
    else
      url "https://static.ampcode.com/cli/0.0.1785082702-g120b8b/amp-linux-x64"
      sha256 "5b372c30d6011c3b15dc8deaa36cf0f68a05819571ba06880bf041d5f4672215"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
