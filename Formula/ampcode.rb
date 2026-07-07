class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783401425-gc7fcc1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783401425-gc7fcc1/amp-darwin-arm64"
      sha256 "9650b7c244f98ece068348d288ce4c8f3d1a8520c6820f681371c0d83d018a38"
    else
      url "https://static.ampcode.com/cli/0.0.1783401425-gc7fcc1/amp-darwin-x64"
      sha256 "4789f40dc7f1dcc53672fbd79f36005f841796179ec5651aba4c7cf38b046d49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783401425-gc7fcc1/amp-linux-arm64"
      sha256 "2b1e9a845342b9443d1483ffd682fd96f1cf65b994c326fe56cd79b787dd22c7"
    else
      url "https://static.ampcode.com/cli/0.0.1783401425-gc7fcc1/amp-linux-x64"
      sha256 "34ff26f526b1d9c0e645e919683862dc83e3166ab8c3d814c4fe40eba3306c07"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
