class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780779095-gf7b6a3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780779095-gf7b6a3/amp-darwin-arm64"
      sha256 "c40bd57a65e84d24b91d83f76a491138549985cacf057257aca788de2263fa94"
    else
      url "https://static.ampcode.com/cli/0.0.1780779095-gf7b6a3/amp-darwin-x64"
      sha256 "0dde6138ee26022e22726846f6782d30fa3d852d85d072d49ced7cb41dc74712"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780779095-gf7b6a3/amp-linux-arm64"
      sha256 "c6ae0a8d9561aebd7dd430764dc573135748ec76b5b770cd927fdefde7f7ba31"
    else
      url "https://static.ampcode.com/cli/0.0.1780779095-gf7b6a3/amp-linux-x64"
      sha256 "99d3355edbc8f464d6f846848235a7656444b20fa989ff6f0a615889394e8a05"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
