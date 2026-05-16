class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778891334-g1ecf79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778891334-g1ecf79/amp-darwin-arm64"
      sha256 "e1830068066c23b72fa365d2bc1678c9d5f3d01894625884dde6c00259ebc556"
    else
      url "https://static.ampcode.com/cli/0.0.1778891334-g1ecf79/amp-darwin-x64"
      sha256 "2c76bcdc0948321e297c18b21636ad13af54eeda0a2d7c7928312308f3a89a4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778891334-g1ecf79/amp-linux-arm64"
      sha256 "d6d5fdb4acc2eb43b6d1ce9cbb526cc676197959d93d9aca4e274aba3a842d58"
    else
      url "https://static.ampcode.com/cli/0.0.1778891334-g1ecf79/amp-linux-x64"
      sha256 "55a671ce39e7b003cf7c850e379c85e94180d550ddb568896b1ed78f02a50e63"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
