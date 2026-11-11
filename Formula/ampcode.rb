class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794369644-gb4be3c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794369644-gb4be3c/amp-darwin-arm64"
      sha256 "134fe8cc0961badb11a81bcb41e836cb691ee75dc036cd2e38c71cd757004222"
    else
      url "https://static.ampcode.com/cli/0.0.1794369644-gb4be3c/amp-darwin-x64"
      sha256 "e08a24ec4049d26340e8d3fcf84fa49279a67cb509bf9a431c9a3464c3fbe05f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794369644-gb4be3c/amp-linux-arm64"
      sha256 "230d695d66e61bf4e2254085d3c40b85ba50b61fb536f837022c840a8549c2e6"
    else
      url "https://static.ampcode.com/cli/0.0.1794369644-gb4be3c/amp-linux-x64"
      sha256 "6890ef0ae3bf703c4166594d56947eae54f718f85fc2bd6b32f4e11f043698ff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
