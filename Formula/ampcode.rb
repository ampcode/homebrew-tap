class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780508154-g12b569"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780508154-g12b569/amp-darwin-arm64"
      sha256 "c8e65562eb8443c65f5be38e679150c77af93f24d14da6094d121a321ec09cd9"
    else
      url "https://static.ampcode.com/cli/0.0.1780508154-g12b569/amp-darwin-x64"
      sha256 "e7718b8d27b2ae9a02bc536bb9092418ed7497b144515f0ae28b1c22b15e6312"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780508154-g12b569/amp-linux-arm64"
      sha256 "0d1f98d2ce95ca52e71a9f19dfa56271052032a804b4a06e61631718186b78da"
    else
      url "https://static.ampcode.com/cli/0.0.1780508154-g12b569/amp-linux-x64"
      sha256 "43901b524164d6e13b894a7f72c09d0ca8c3af48a6b4f60785b31394f60cd1b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
