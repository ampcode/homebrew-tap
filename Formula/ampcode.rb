class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791705634-g3bdda1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791705634-g3bdda1/amp-darwin-arm64"
      sha256 "6f61efd8ce256f49ab718c5d3929deec9beaa98e3f910775b13a41f9d716364d"
    else
      url "https://static.ampcode.com/cli/0.0.1791705634-g3bdda1/amp-darwin-x64"
      sha256 "264a58bbf46047cac4ad44446c4bd7e4f2623214ea18b9830eb51aff11293f7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791705634-g3bdda1/amp-linux-arm64"
      sha256 "b555f2cd109b08ce3d9c5fde86c309bf0ee92a6809e3ac46ad6af2d0f86d5c58"
    else
      url "https://static.ampcode.com/cli/0.0.1791705634-g3bdda1/amp-linux-x64"
      sha256 "f9c511660f79fe7bf910030bc25a8e18651fbaca80a97ffb58277428a4dfa8e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
