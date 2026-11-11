class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794412840-g1f3ec2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794412840-g1f3ec2/amp-darwin-arm64"
      sha256 "890c7556e532f128b70744cefc325ffdbd05599bfec280a1e0e2cb951cc33d21"
    else
      url "https://static.ampcode.com/cli/0.0.1794412840-g1f3ec2/amp-darwin-x64"
      sha256 "5b5cf8f0f6937fae5ab0cb5907d2117f84b5ecb960c93327f4f3f0c221c954df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794412840-g1f3ec2/amp-linux-arm64"
      sha256 "c2f35483b72c48428eff58b52b517cb218401142277abd0c735c51c8f1718039"
    else
      url "https://static.ampcode.com/cli/0.0.1794412840-g1f3ec2/amp-linux-x64"
      sha256 "2bd3227aa1a7924f7f78b0c6928c175180cf4fdd4e2c445eb9cd6d5770365c5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
