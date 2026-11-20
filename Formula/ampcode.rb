class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795190440-gf3619d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795190440-gf3619d/amp-darwin-arm64"
      sha256 "8c11493ad2b936757ce01b2f035ba3c696f5023694a601848d39ada9e5a51f9b"
    else
      url "https://static.ampcode.com/cli/0.0.1795190440-gf3619d/amp-darwin-x64"
      sha256 "f35786ef277f7707e0b8b670f990e216da50492cc6aec326cb82399b5f5e94a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795190440-gf3619d/amp-linux-arm64"
      sha256 "7d4b6c24d795df9a27155fb8aaa62c39495f5cc322683892fa5c225410f47f06"
    else
      url "https://static.ampcode.com/cli/0.0.1795190440-gf3619d/amp-linux-x64"
      sha256 "72522fdeb3c4588014a7fafe6633b83a2d70ef556ba4da7bca5536860068ec84"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
