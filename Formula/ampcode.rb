class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777169881-g92465f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777169881-g92465f/amp-darwin-arm64"
      sha256 "cd763c6d67a7b13042e7251de644fbb66b047feecd34c9b9592ebde575d7b820"
    else
      url "https://static.ampcode.com/cli/0.0.1777169881-g92465f/amp-darwin-x64"
      sha256 "d82530947f478b43ceaa9370297cdad9a682b257ba6bd7b81c881146dc521e8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777169881-g92465f/amp-linux-arm64"
      sha256 "dd1a6795fdcc06f3eee76277d6d214c6f99c78cf7f7382b26377e5e7821715ea"
    else
      url "https://static.ampcode.com/cli/0.0.1777169881-g92465f/amp-linux-x64"
      sha256 "33841f0442f7860231d924f1b23906204f3aaff8b63f2717ef17af753969d02c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
