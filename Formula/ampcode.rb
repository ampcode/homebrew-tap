class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792900834-gfb378a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792900834-gfb378a/amp-darwin-arm64"
      sha256 "bb1c63085356643d5dbae3a874bf29036b622499aae0d22a61ca15720cb4324f"
    else
      url "https://static.ampcode.com/cli/0.0.1792900834-gfb378a/amp-darwin-x64"
      sha256 "d8acdbe34433e222136d87ec97b16c4c6ab783bfbce553a70046b3f66beb0c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792900834-gfb378a/amp-linux-arm64"
      sha256 "38c7487a8d1af8042530efc3f1bb581916bc1fd3a4d654ba24952228d922af93"
    else
      url "https://static.ampcode.com/cli/0.0.1792900834-gfb378a/amp-linux-x64"
      sha256 "eea2a8349d2ddd0b36645069824ed0ffc913ff89607c4e2cf3d2d9fbcb93b11c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
