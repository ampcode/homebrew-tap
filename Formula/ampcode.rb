class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782136300-gaa9741"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782136300-gaa9741/amp-darwin-arm64"
      sha256 "8c3ad5c4a90c0946b4bc99e11c1796233136516531e33bdb269723ebca75bc9f"
    else
      url "https://static.ampcode.com/cli/0.0.1782136300-gaa9741/amp-darwin-x64"
      sha256 "55001c5b1203dd9633db6940e8e0226fd2ce3070849b25b96dd8054823a3df15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782136300-gaa9741/amp-linux-arm64"
      sha256 "4f5378ae9adc19af081d6673c069a80231f5af7465b8d9a59bdfac6daf2dddac"
    else
      url "https://static.ampcode.com/cli/0.0.1782136300-gaa9741/amp-linux-x64"
      sha256 "d4d1db6a5b28c04d93f5b231d24130533c5f93b1d30926f24291c942609f61c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
