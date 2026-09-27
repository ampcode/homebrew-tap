class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790524853-gfa9fda"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790524853-gfa9fda/amp-darwin-arm64"
      sha256 "d372aee3b9811d5f7ef5b6e3d25c3b8335ba8571c38af19543b4c23a1fb3a102"
    else
      url "https://static.ampcode.com/cli/0.0.1790524853-gfa9fda/amp-darwin-x64"
      sha256 "7f38d163b8881db9344647bb2b389201acc10fcccb094e51515d90b72745ac5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790524853-gfa9fda/amp-linux-arm64"
      sha256 "3ac8c0e3ddc670d6f50ce4e94ae30c7f6e110734e4d1e2f17d78b87b66ba86a9"
    else
      url "https://static.ampcode.com/cli/0.0.1790524853-gfa9fda/amp-linux-x64"
      sha256 "03edf6f2bffe85fc38647dc485ac87e24963419f2deeac788faa0cfb4acc1e7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
