class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786838506-ge65dd2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786838506-ge65dd2/amp-darwin-arm64"
      sha256 "0a2352ad0f94f36f85ed3e471a5841d651385a066522e1151d16c0fc7805d495"
    else
      url "https://static.ampcode.com/cli/0.0.1786838506-ge65dd2/amp-darwin-x64"
      sha256 "91a1ee8c4b7742a926a3cb15c319c21bc6ac95a365a4f4af8f92d7e6b681b922"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786838506-ge65dd2/amp-linux-arm64"
      sha256 "f457838778121c2e0e3ca66002e107e29c38d597b304f4027a548ee584bbcdcc"
    else
      url "https://static.ampcode.com/cli/0.0.1786838506-ge65dd2/amp-linux-x64"
      sha256 "62268d7b47fa0fddecf7addee9448759a22e9ccd810c8aa3cbaef00f28464d93"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
