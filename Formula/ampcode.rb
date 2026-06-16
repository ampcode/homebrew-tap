class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781647442-g7b7061"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781647442-g7b7061/amp-darwin-arm64"
      sha256 "bc3b1d8d0fa434a3cee755cc89eb74dea1af3d71cd015273d83dd14a5db8eec2"
    else
      url "https://static.ampcode.com/cli/0.0.1781647442-g7b7061/amp-darwin-x64"
      sha256 "b5d875efba9962be458b55da1234bb4e21fd82f512db1eb13bf840b7eb8aaec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781647442-g7b7061/amp-linux-arm64"
      sha256 "263e159cef014812a548895cb97f46325efd3463df7d97b8da0036feda89f2fe"
    else
      url "https://static.ampcode.com/cli/0.0.1781647442-g7b7061/amp-linux-x64"
      sha256 "be5da8c635feddf4a32643e69c62f4f63560ed44fedec4d7e929e780f78ecc77"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
