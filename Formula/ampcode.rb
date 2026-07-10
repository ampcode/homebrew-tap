class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783687353-g1c35ad"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783687353-g1c35ad/amp-darwin-arm64"
      sha256 "7f5af801306c4c01b377be6f9bac6644da74cb543a8d54bde9e715d2e6800b69"
    else
      url "https://static.ampcode.com/cli/0.0.1783687353-g1c35ad/amp-darwin-x64"
      sha256 "6cbc4c2ffa9e705bef788020671f27cd709fb969306d6109e9cb52b50669e99f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783687353-g1c35ad/amp-linux-arm64"
      sha256 "0d8b8d79cacc791a91728784c2707f972e2e0b14f4f24028b0cb08fff3fdf424"
    else
      url "https://static.ampcode.com/cli/0.0.1783687353-g1c35ad/amp-linux-x64"
      sha256 "9f898f6ec2b958e64c8512964e70843801c0ae92ccdd90d5afa5ecf5e5e54e1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
