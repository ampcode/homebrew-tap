class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791316840-g709a2a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791316840-g709a2a/amp-darwin-arm64"
      sha256 "618592a5eaee90fdc03492da4407f7dcad8f9bd01e488d54c4c6cd665160cd04"
    else
      url "https://static.ampcode.com/cli/0.0.1791316840-g709a2a/amp-darwin-x64"
      sha256 "739a07ae0b683abc5ea4df4356db97a16996324722bdf891e4c4cb5c7153b5ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791316840-g709a2a/amp-linux-arm64"
      sha256 "81824f29808c2ec57633c8e77a74829151722a0c2971969fd14348206fce1cfe"
    else
      url "https://static.ampcode.com/cli/0.0.1791316840-g709a2a/amp-linux-x64"
      sha256 "281121238d0effec8245fe0100cb031601a52b8a4ae8bd3719dd7a971f52f716"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
