class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795147237-g4dbcdb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795147237-g4dbcdb/amp-darwin-arm64"
      sha256 "b37f4e2893d0655a24e601b748cad5ed1e962139710ca82e1d1f10c7a788f08c"
    else
      url "https://static.ampcode.com/cli/0.0.1795147237-g4dbcdb/amp-darwin-x64"
      sha256 "dae11c857f3cc3263f7084bea7a0d63f8913da96f4497c70dcf1d9b1231f0b9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795147237-g4dbcdb/amp-linux-arm64"
      sha256 "28af045f82e47718d793736597f07344ecc7f1c4dfe69c07f258c764cda8c39e"
    else
      url "https://static.ampcode.com/cli/0.0.1795147237-g4dbcdb/amp-linux-x64"
      sha256 "6579c5f5fd333793f4d7bc00491d1cf084b98979a9f20349d013896289707c0c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
