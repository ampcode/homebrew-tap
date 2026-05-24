class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779624958-g6d0650"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779624958-g6d0650/amp-darwin-arm64"
      sha256 "a0d6afefc27e5eba8ecb5c6c92c14fe12a7ceed4abec1db532848bb55eebafb3"
    else
      url "https://static.ampcode.com/cli/0.0.1779624958-g6d0650/amp-darwin-x64"
      sha256 "de92d492931602a89c22fe6c458cf427ef4cbb68df53c6b23575c9e776f5ef1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779624958-g6d0650/amp-linux-arm64"
      sha256 "31c840ae8742dd2a4b1df0bab45427f5e7656692ed26d130bf78067b233a4338"
    else
      url "https://static.ampcode.com/cli/0.0.1779624958-g6d0650/amp-linux-x64"
      sha256 "e7d5056503bd1bcaa598538b872ec6ec5ed29ac44774b857cf1c65cd6949ae3e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
