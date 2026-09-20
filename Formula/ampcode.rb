class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789887975-g92a99e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789887975-g92a99e/amp-darwin-arm64"
      sha256 "47d23c09dcbfeaf06bb174ceb974577f7927e5725090871bad994894977d2c05"
    else
      url "https://static.ampcode.com/cli/0.0.1789887975-g92a99e/amp-darwin-x64"
      sha256 "ff3482b62789eb25e91478661296d64f221f6e637aaf001af97294cdb854d172"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789887975-g92a99e/amp-linux-arm64"
      sha256 "276d9dc9519df30b8915c0e1b045bdce0fdc6366a5a23ba867401e93ee54676a"
    else
      url "https://static.ampcode.com/cli/0.0.1789887975-g92a99e/amp-linux-x64"
      sha256 "11668be66726a1ae59f51f1631f54565c21f64fd2c2f617f2180cb6aca7586ac"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
