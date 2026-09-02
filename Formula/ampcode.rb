class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788360918-gdbca2c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788360918-gdbca2c/amp-darwin-arm64"
      sha256 "d2564389378088c8316f9744340a42fb7798c6855d7b62a17d127e0bb0647cb4"
    else
      url "https://static.ampcode.com/cli/0.0.1788360918-gdbca2c/amp-darwin-x64"
      sha256 "494b077746b1a1da26ddf58a288a116e80dd9b0facb4b6f680189cfad8bf16aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788360918-gdbca2c/amp-linux-arm64"
      sha256 "0981fadfa586d2cc7ad39229c7771a27a9089aaef0b3ac6c15e755701a82fd1d"
    else
      url "https://static.ampcode.com/cli/0.0.1788360918-gdbca2c/amp-linux-x64"
      sha256 "e46b0fcbf1913e0991e66047ef30f0480e52350a66957a8751c5e016da7174be"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
