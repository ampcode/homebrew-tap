class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786795270-gfd33d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786795270-gfd33d4/amp-darwin-arm64"
      sha256 "71a4bd87babe3ac4da2a49a7675adb0c4d5fcd324fc570240f8e02310aa234e8"
    else
      url "https://static.ampcode.com/cli/0.0.1786795270-gfd33d4/amp-darwin-x64"
      sha256 "70c9fc128364ac21f60101b39781615f5e55e2f6908099ba415dab9dc2e9ef48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786795270-gfd33d4/amp-linux-arm64"
      sha256 "de7db253662dae71bd598cfdb96b61297a8486af47fc9b0e13ab76bb7e54d082"
    else
      url "https://static.ampcode.com/cli/0.0.1786795270-gfd33d4/amp-linux-x64"
      sha256 "a0948b6703238e813105440304cd20daf166532b4b1885cc4da564d616eddeb7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
