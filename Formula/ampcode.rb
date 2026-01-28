class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769594672-g3dce0e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769594672-g3dce0e/amp-darwin-arm64"
      sha256 "ec10c7a950c01348f097f19d12437c7188e1b6997bac3decf815f92a604bd0a8"
    else
      url "/0.0.1769594672-g3dce0e/amp-darwin-x64"
      sha256 "d708460aff0dc451d7d2f3c814d5e0fd7a8c1f9caac6a3a4af67eabddb33e58b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769594672-g3dce0e/amp-linux-arm64"
      sha256 "dbc5dad290f06dec0ba158f22b04486d28f09c4fa4e43de1a8c8fef1765b9881"
    else
      url "/0.0.1769594672-g3dce0e/amp-linux-x64"
      sha256 "60f1e82ebe0e607ab2f8eafa6839203215d8d66b2564a763a9c8def10da8b8e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
