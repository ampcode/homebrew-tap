class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787155755-g62ff24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787155755-g62ff24/amp-darwin-arm64"
      sha256 "4d8d0b1e66836f81149b677c9dafb5e93aa1cb3f1ee397699ff71ad132a1f9ac"
    else
      url "https://static.ampcode.com/cli/0.0.1787155755-g62ff24/amp-darwin-x64"
      sha256 "0aa592390f2702d1bfa303d03827c9d9591bc57e1949c8ba0f2eb7465091d422"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787155755-g62ff24/amp-linux-arm64"
      sha256 "1eee79640208705d62e329a7de93fdc0c8cc3d75d211b35b3f5f973f497f6efb"
    else
      url "https://static.ampcode.com/cli/0.0.1787155755-g62ff24/amp-linux-x64"
      sha256 "aa6ea4f0f161510fd6e66c2b0232ef35ef84f05dd724d840c0d90953ee8d2c13"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
