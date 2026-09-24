class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790208065-g64a2e5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790208065-g64a2e5/amp-darwin-arm64"
      sha256 "c46647a1145e657160d3f0faf32ccfc3dc7447a5dfc895056b744794bde28dc2"
    else
      url "https://static.ampcode.com/cli/0.0.1790208065-g64a2e5/amp-darwin-x64"
      sha256 "550cc9ecfc540e24c0525c0d1e8291b1182be62db8a2b4ce63b2c828a8f764ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790208065-g64a2e5/amp-linux-arm64"
      sha256 "9056ec1bf1d65dd5a1a656ccf75b3a937300c56b9482062472468b019ff4401c"
    else
      url "https://static.ampcode.com/cli/0.0.1790208065-g64a2e5/amp-linux-x64"
      sha256 "ff56c19a283bc55fc6f2a899aa7ab49123631e1d90b684c89bad69ec9bbaf28f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
