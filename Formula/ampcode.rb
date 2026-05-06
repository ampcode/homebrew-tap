class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778049149-g4ce163"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778049149-g4ce163/amp-darwin-arm64"
      sha256 "6328303326cab7aba50684c5c175f6bc441fd4528cbc15d4078b23b35438daa4"
    else
      url "https://static.ampcode.com/cli/0.0.1778049149-g4ce163/amp-darwin-x64"
      sha256 "92f5a0026a7879316a4b206cd47662c36f77a3fd1afea13b0ff820d7f5b27a03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778049149-g4ce163/amp-linux-arm64"
      sha256 "e8e673c81fe33b2dcdacea1a2a2c6ae361c452963ce054f526cfe9e199c5809c"
    else
      url "https://static.ampcode.com/cli/0.0.1778049149-g4ce163/amp-linux-x64"
      sha256 "cc45d98cb3c2a9e6dbe3fc91b5fc4580360355c1befb2b4096a28ac8d2ab4d62"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
