class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790062146-g8c4e0d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790062146-g8c4e0d/amp-darwin-arm64"
      sha256 "135721c91aceb5d49ca2a90c5155b8d92eba5b7922091373a24b9a66d0a4cf64"
    else
      url "https://static.ampcode.com/cli/0.0.1790062146-g8c4e0d/amp-darwin-x64"
      sha256 "c52dee82786d562b407ee3d09e4071bf413155655e6da541032b1387fbd21715"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790062146-g8c4e0d/amp-linux-arm64"
      sha256 "3cf1ecf2d7499217d80047946eb9e0edd7d04676be6b2b3e897723b93f857368"
    else
      url "https://static.ampcode.com/cli/0.0.1790062146-g8c4e0d/amp-linux-x64"
      sha256 "d88de35458be05cfc78be1e5e119643b1966c83466411b74c27a24a04f430bd6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
