class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779229557-g46659d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779229557-g46659d/amp-darwin-arm64"
      sha256 "3454d0a13ed2bb20a6c7b1a512be9eec6b4d5f76dcd04595fdeadedc8b779a74"
    else
      url "https://static.ampcode.com/cli/0.0.1779229557-g46659d/amp-darwin-x64"
      sha256 "0c8fc858d0c9a74311a712920bef77d6a99fce80b71ef8fc8bf34f7b32490554"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779229557-g46659d/amp-linux-arm64"
      sha256 "2f75eadda8960225ec3efe1496e257d7e47dfa27e250b906a2cdc493f654e392"
    else
      url "https://static.ampcode.com/cli/0.0.1779229557-g46659d/amp-linux-x64"
      sha256 "30b5ecf4e0fd50cb2213b715ac817e5b351026e3d31ae057974087b6db9cd4c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
