class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782718723-g3137c5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782718723-g3137c5/amp-darwin-arm64"
      sha256 "fe833545292af5bb7c0af1b3e5b9664b2c21b6023af5e185815b22e9a05d9671"
    else
      url "https://static.ampcode.com/cli/0.0.1782718723-g3137c5/amp-darwin-x64"
      sha256 "e1dbe2bd673679d5f69f435ecf60ba2a8df158b439effe72083806c5f60da60f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782718723-g3137c5/amp-linux-arm64"
      sha256 "1728a12fbb8e698c4b7447237a6ebd856ffcab219188c1770d6858ce496d601a"
    else
      url "https://static.ampcode.com/cli/0.0.1782718723-g3137c5/amp-linux-x64"
      sha256 "0a9add1061d850d9f5f896e8830c9aa0268bebee3ee7461abcf02961145e22d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
