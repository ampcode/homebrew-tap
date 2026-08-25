class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787659485-g628b2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787659485-g628b2e/amp-darwin-arm64"
      sha256 "83b43a32479b6cb681914531c8c0c6c21a5e17f5fdccebe86276986d9133395d"
    else
      url "https://static.ampcode.com/cli/0.0.1787659485-g628b2e/amp-darwin-x64"
      sha256 "881e7ed9fb36a1f82d93c7ac4f3e3855100781a78dda0e34c766fd4d7bf77651"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787659485-g628b2e/amp-linux-arm64"
      sha256 "53808849bb4f021f1442460c7bf3073b21ea5083e4c9cd4dd16a54dd6bfa399b"
    else
      url "https://static.ampcode.com/cli/0.0.1787659485-g628b2e/amp-linux-x64"
      sha256 "d06ff7f3feec2a77c374058d9dde292b4baec1104e284a16cef38ec93ce9d1a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
