class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780991867-gacb4aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780991867-gacb4aa/amp-darwin-arm64"
      sha256 "1df081d7842ea5296242fe51e185d01d41595983f37b77287a26f9ed4476b3b0"
    else
      url "https://static.ampcode.com/cli/0.0.1780991867-gacb4aa/amp-darwin-x64"
      sha256 "47eb20f05d07b992348565c0fe618d5fff501f1810b59f6b13b776142cc53e6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780991867-gacb4aa/amp-linux-arm64"
      sha256 "f680d243b2838b6ac58530c3827162135128a2af8746bbaff02ff78c295bbc52"
    else
      url "https://static.ampcode.com/cli/0.0.1780991867-gacb4aa/amp-linux-x64"
      sha256 "146098346e7f56895d4ae0b1ea1bbaca555bf35c4f7c7d42e2a3e78b5ff21abb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
