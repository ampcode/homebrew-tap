class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793304039-g62d85d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793304039-g62d85d/amp-darwin-arm64"
      sha256 "19886613dc55ed3ed7a90a9a56680b48f0ff15566f11e91401c36f5c7699fd95"
    else
      url "https://static.ampcode.com/cli/0.0.1793304039-g62d85d/amp-darwin-x64"
      sha256 "f82f6f37d76097a81c1b54d8c7e050b8771c57a2c193f0649f6052087b2ec0e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793304039-g62d85d/amp-linux-arm64"
      sha256 "eba28a79e7e78393a1c463bd4fbc58145cab636be2b2b1e5eb6edee3e5df4707"
    else
      url "https://static.ampcode.com/cli/0.0.1793304039-g62d85d/amp-linux-x64"
      sha256 "4303a378e79427d5d8216bf563f769a25b7dee9ac07eef4f67f79d87484c19ef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
