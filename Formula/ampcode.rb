class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787053866-g1cccf3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787053866-g1cccf3/amp-darwin-arm64"
      sha256 "c255b5127cafa533ab907f393fecc63ff5d3033420b087f2da9dd522364b731d"
    else
      url "https://static.ampcode.com/cli/0.0.1787053866-g1cccf3/amp-darwin-x64"
      sha256 "e551d21f6cc123263b7f6ec810e85b0dc2d140326098cbf76c3650cf42c771a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787053866-g1cccf3/amp-linux-arm64"
      sha256 "dafabeeadd536e5f3af46c0ae0b628669cd2e9d1a2c9dd71ddfcf23e562d5d51"
    else
      url "https://static.ampcode.com/cli/0.0.1787053866-g1cccf3/amp-linux-x64"
      sha256 "a2dcdeb93047f269ff451d95e8b4293ac7ff33a5a416dae3fbbb44432258fa8d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
