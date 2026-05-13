class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778649215-g827878"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778649215-g827878/amp-darwin-arm64"
      sha256 "0c23e3f693c25e7b8e3684392b5f8610fd56efc8d46bbd71fbaf5ef3aa8285e4"
    else
      url "https://static.ampcode.com/cli/0.0.1778649215-g827878/amp-darwin-x64"
      sha256 "48e6ed1b211c1b8d705ebe4b9dce2c5b36e1fca99acf9a0d5aef8e8b8e8ee3c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778649215-g827878/amp-linux-arm64"
      sha256 "1ad03b8ebc44056f04a64eea6e8b98445184be385c32c39ee6fc0e2dfedf03cd"
    else
      url "https://static.ampcode.com/cli/0.0.1778649215-g827878/amp-linux-x64"
      sha256 "b798262de468209887d5f28883d372c17231075e9869ccc9330fe760382cc670"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
