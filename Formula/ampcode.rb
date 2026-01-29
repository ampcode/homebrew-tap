class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769644974-g5e0cdb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769644974-g5e0cdb/amp-darwin-arm64"
      sha256 "f1afedf9f24b8df4712e13fcc6c670bd07a182fec384d981577f55329814fffd"
    else
      url "/0.0.1769644974-g5e0cdb/amp-darwin-x64"
      sha256 "4e8e0059729edb9e8b424245c13394df8b407e731cd323a009235514b753ce0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769644974-g5e0cdb/amp-linux-arm64"
      sha256 "d863eb008df9218979366ca49a266572932b93bdc4d7ce40c95a5c0130ab7afb"
    else
      url "/0.0.1769644974-g5e0cdb/amp-linux-x64"
      sha256 "74329e5f770775b76c29bbe12becd6d37412ecbe4d8238fd02be848d3fc1d346"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
