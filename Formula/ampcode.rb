class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778562541-g71fe7b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778562541-g71fe7b/amp-darwin-arm64"
      sha256 "35a855d53bc2d0be1c246ed04bfb6fe68dcc687f63f8c100413d85cb537f0bf1"
    else
      url "https://static.ampcode.com/cli/0.0.1778562541-g71fe7b/amp-darwin-x64"
      sha256 "8a78902aa9f8a4767b92b691071726b53483be8166ee49da56611d93791ef0fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778562541-g71fe7b/amp-linux-arm64"
      sha256 "dfbfdbce37b55cc420069a079223b0da7020136ab03a9f5869141230a9ae1b90"
    else
      url "https://static.ampcode.com/cli/0.0.1778562541-g71fe7b/amp-linux-x64"
      sha256 "3290f2a4eed9b1c8e8e19af4a935e4bf8a9c332bc9244f6e5b4a4cb4456a2aff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
