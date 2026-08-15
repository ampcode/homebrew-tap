class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786824065-g013933"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786824065-g013933/amp-darwin-arm64"
      sha256 "fca4c51f57b25025fa3f2f3dfa32a4386ee07a6736b85c2ed2a97c877d871d1c"
    else
      url "https://static.ampcode.com/cli/0.0.1786824065-g013933/amp-darwin-x64"
      sha256 "1bac7954159c18faf2902b08623244c589d7e6e19c7a64d2541aec96dd11945d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786824065-g013933/amp-linux-arm64"
      sha256 "a4535632d96d8431a3af1801e46655ca7074aebbd9d6790723420b7a2fae1921"
    else
      url "https://static.ampcode.com/cli/0.0.1786824065-g013933/amp-linux-x64"
      sha256 "66b1da3154a284fbba23cadbd4cd1ad86666ff14f15f054d5f7d6be767f54908"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
