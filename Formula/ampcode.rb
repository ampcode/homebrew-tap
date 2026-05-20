class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779281030-g717da7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779281030-g717da7/amp-darwin-arm64"
      sha256 "0c5ff3aa657fdf5b9d5b2c224f26810a031f027f047dcb1275fbe260c9338a41"
    else
      url "https://static.ampcode.com/cli/0.0.1779281030-g717da7/amp-darwin-x64"
      sha256 "72dd616e803e14554331a9de86fa01126b752a22b11b4174d905705216f26d36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779281030-g717da7/amp-linux-arm64"
      sha256 "1e991542b49cce239d3f9623acc97aaf6ac5b3b143def83c8d12c8ff9b861466"
    else
      url "https://static.ampcode.com/cli/0.0.1779281030-g717da7/amp-linux-x64"
      sha256 "bdaf554b82928b40c0fffb6d8bb464bf48a8f643c60f0edcafd1301e1919fb02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
