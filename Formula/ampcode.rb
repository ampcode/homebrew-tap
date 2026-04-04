class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775261130-gf151e7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775261130-gf151e7/amp-darwin-arm64"
      sha256 "ea028dcc4ff8413f92c4f713bb5a713af1a545ed79dbd3f49499c9c5c2d40c41"
    else
      url "https://static.ampcode.com/cli/0.0.1775261130-gf151e7/amp-darwin-x64"
      sha256 "d06b14598229cb9597d4fdb89e25158f84ac5c77455f3b2d0686d992ef3eaab1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775261130-gf151e7/amp-linux-arm64"
      sha256 "955488de6d664600c5d0b63984603aa27fd7c7e0fe4f7de6b90de5d21b9fefb8"
    else
      url "https://static.ampcode.com/cli/0.0.1775261130-gf151e7/amp-linux-x64"
      sha256 "3be8ce8abc4acf77ead6f8bfee1ad4cf337912e7cd0bde0ce09b66431c9958bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
