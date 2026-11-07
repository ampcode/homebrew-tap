class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794009661-g88d32b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794009661-g88d32b/amp-darwin-arm64"
      sha256 "c0b5f9091626a4cd7391faca53c4e8abc5944f5e71ebadc997a5021af3fd783a"
    else
      url "https://static.ampcode.com/cli/0.0.1794009661-g88d32b/amp-darwin-x64"
      sha256 "752aa52596b3ee986adb5084ad7011b0ae9512a5c467ccef2ab64c25604d053e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794009661-g88d32b/amp-linux-arm64"
      sha256 "836d07d9d49e4041139cffb5fce06e3d5941a590e21b1cb7dad6dfc3a2be1f0d"
    else
      url "https://static.ampcode.com/cli/0.0.1794009661-g88d32b/amp-linux-x64"
      sha256 "068f4d9192beb9698b56de134c41b6f5e8cbff2bd88bd4699b113b0a0c787ce2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
