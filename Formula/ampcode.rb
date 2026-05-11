class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778531432-g3bd093"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778531432-g3bd093/amp-darwin-arm64"
      sha256 "a6719cde9dc1c54e841a754ec5ec0c70fcdd3a6614e456d24c85df890c8d0e47"
    else
      url "https://static.ampcode.com/cli/0.0.1778531432-g3bd093/amp-darwin-x64"
      sha256 "cf2c71481549c17743fc979a363ecf320d7ef757363195fd82a4f99193848137"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778531432-g3bd093/amp-linux-arm64"
      sha256 "da3df31a6db708f367f43477f19b6d87c95c94916c88dbcd3342cc50fd67d1d5"
    else
      url "https://static.ampcode.com/cli/0.0.1778531432-g3bd093/amp-linux-x64"
      sha256 "31f6fb76cf6e9ffecb5061ec534279324b1620a153cbf0d52719ba1e6e808ebd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
