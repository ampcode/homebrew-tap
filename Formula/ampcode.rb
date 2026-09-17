class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789620437-g8a5153"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789620437-g8a5153/amp-darwin-arm64"
      sha256 "2e9d8f88d4d895e7c39a21a043b645417e0d722cc1ca4ea11a71e44426c717c1"
    else
      url "https://static.ampcode.com/cli/0.0.1789620437-g8a5153/amp-darwin-x64"
      sha256 "e8af98523d788fb0f5f08fb4a2c35b69eb4998bf0c8c74cb845a1002ca2204c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789620437-g8a5153/amp-linux-arm64"
      sha256 "b4bc3324b590fa4030585791301049be4fcef92f3d17c863a00ac25ad1018d1b"
    else
      url "https://static.ampcode.com/cli/0.0.1789620437-g8a5153/amp-linux-x64"
      sha256 "4849b95eef414ae5ff48ac9bf5c67d244d47bb08a1b073c1b309d85e7a6884c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
