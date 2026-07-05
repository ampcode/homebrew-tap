class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783228622-g9b591b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783228622-g9b591b/amp-darwin-arm64"
      sha256 "38dc72c659c1d5857d692cb1e277e821285e5677c81f7412e9f8689580ab7475"
    else
      url "https://static.ampcode.com/cli/0.0.1783228622-g9b591b/amp-darwin-x64"
      sha256 "e4afe16219f311bffd687593d8e7a967562da30afa4d01fb19c3132e6a013d64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783228622-g9b591b/amp-linux-arm64"
      sha256 "72fc7360f265fd18e57f293714c84a77c14c7455103b79a9f8ea118a15f1910f"
    else
      url "https://static.ampcode.com/cli/0.0.1783228622-g9b591b/amp-linux-x64"
      sha256 "153a69f4a5a0165c2ec7b6d0b2346de6f52534ae0b0c47b3f8516e078248731c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
