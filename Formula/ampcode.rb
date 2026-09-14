class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789416054-g834320"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789416054-g834320/amp-darwin-arm64"
      sha256 "3cf59e785cd5bb2739998c51e8ef2d73f74291673f1fc506617c34f13ed8191c"
    else
      url "https://static.ampcode.com/cli/0.0.1789416054-g834320/amp-darwin-x64"
      sha256 "a43d02f3d24db53df8c5f3346d3f0ab94e5d5ef7fd0139e961aeaa925e56b4ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789416054-g834320/amp-linux-arm64"
      sha256 "2f843012df4f17d07b45ff20d8eb29fbcbe4dfe78d5615a7190727d2e01a53c5"
    else
      url "https://static.ampcode.com/cli/0.0.1789416054-g834320/amp-linux-x64"
      sha256 "ec0b7db632c5df4ff8ba07b1c5ea4e733e14ea86a5257fad9eb8b3460830358b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
