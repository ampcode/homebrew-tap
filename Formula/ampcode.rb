class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778171486-g3e6a89"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778171486-g3e6a89/amp-darwin-arm64"
      sha256 "a5fc7cc77d6feccaa14804a666016acdb92b76adbf2c1d5dd39e20c44b0375a8"
    else
      url "https://static.ampcode.com/cli/0.0.1778171486-g3e6a89/amp-darwin-x64"
      sha256 "2b84b4b413c4b5ea8fc567c901b2a309d23d3d5f4c8c326ee8d0725ea9736071"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778171486-g3e6a89/amp-linux-arm64"
      sha256 "698182d3ae9c61e41bb213fc96b4d87d3af670ff50fb292aee0becfea45fb345"
    else
      url "https://static.ampcode.com/cli/0.0.1778171486-g3e6a89/amp-linux-x64"
      sha256 "2d4bf893546c6a8536662fd4b7f38618ea5ba0639da450a70ddff7718e69e5a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
