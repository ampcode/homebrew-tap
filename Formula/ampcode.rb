class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793014499-g82ab20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793014499-g82ab20/amp-darwin-arm64"
      sha256 "4719edcdf8bbcf1db0b333a550fbf8d7d92d4cfde864ef745aa661111d888c7a"
    else
      url "https://static.ampcode.com/cli/0.0.1793014499-g82ab20/amp-darwin-x64"
      sha256 "2748eec5bb405cb9df463e5fbf9b385fa5ba251b1308756704c15f90dfd659f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793014499-g82ab20/amp-linux-arm64"
      sha256 "d35ac26a3a9b1b90aba65400d1b677567663e66a052eceed9e29152f553737a7"
    else
      url "https://static.ampcode.com/cli/0.0.1793014499-g82ab20/amp-linux-x64"
      sha256 "aeca65f5898acf71ff82c5032cb926fbd079ba74412bb25b28cd0eeaf1bc5f78"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
