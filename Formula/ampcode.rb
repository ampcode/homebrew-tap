class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782632499-g0f2cc1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782632499-g0f2cc1/amp-darwin-arm64"
      sha256 "9c3ef5321f5362321ee7870590c6f1b2aebf3246700ddf9e9433fed6f4d3bf00"
    else
      url "https://static.ampcode.com/cli/0.0.1782632499-g0f2cc1/amp-darwin-x64"
      sha256 "c44be03a38ec10bce482c511d63f119e730d86c7d1300ca3465a5f24ed7a4356"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782632499-g0f2cc1/amp-linux-arm64"
      sha256 "a8e561e5e147fef908f2ce71ed143af7d99bc045c3123a0ce4ba8c37f0b866fb"
    else
      url "https://static.ampcode.com/cli/0.0.1782632499-g0f2cc1/amp-linux-x64"
      sha256 "85a5bd098b89e276760300996667ab82dc63e35d78ec0d5eaafa7739006452e0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
