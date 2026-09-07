class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788782430-g6feb0e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788782430-g6feb0e/amp-darwin-arm64"
      sha256 "25d8ece8cb4cbd13842cd41d515790221237fc2ff7088e9c3ff136ea78e4ef9f"
    else
      url "https://static.ampcode.com/cli/0.0.1788782430-g6feb0e/amp-darwin-x64"
      sha256 "50e97a297bf713b6a2818a1b09cd69e485d18e81fc1899537ff8c95ee4df86d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788782430-g6feb0e/amp-linux-arm64"
      sha256 "2df1d8f6e3268bb7684ce3b7f8f8001fdbf48cebb724f2b7db041b3e695c2994"
    else
      url "https://static.ampcode.com/cli/0.0.1788782430-g6feb0e/amp-linux-x64"
      sha256 "ef12422d8c1e9f6cab4021c2a3643cc8d0755f2e8b5f7c5abc197fdd6c93bb9e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
