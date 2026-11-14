class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794643233-g7a2d30"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794643233-g7a2d30/amp-darwin-arm64"
      sha256 "15b6417e6b712893c0fb228d375debb9e7fa5827b606875fa9fa7ea0a4a18a3f"
    else
      url "https://static.ampcode.com/cli/0.0.1794643233-g7a2d30/amp-darwin-x64"
      sha256 "2601351893bb2b8ee8ca13d575b8eae0088b4f4ed8b1aa04be3ba7250e17186b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794643233-g7a2d30/amp-linux-arm64"
      sha256 "dfeb19da4489f2b84d66a400d12a216ceadd261e18498c0ee92ec9247d6db2c6"
    else
      url "https://static.ampcode.com/cli/0.0.1794643233-g7a2d30/amp-linux-x64"
      sha256 "f62becf89a7e8aec5328f70068cb9c93b2f254f4acc04194a456d75f8d9eb067"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
