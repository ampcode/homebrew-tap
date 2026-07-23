class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784824164-g9bdb69"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784824164-g9bdb69/amp-darwin-arm64"
      sha256 "0b9bd47b7ac29f38c77b32341fec3987d0c0ece598b6224e2f82a9ba63127297"
    else
      url "https://static.ampcode.com/cli/0.0.1784824164-g9bdb69/amp-darwin-x64"
      sha256 "0f50ea012cb0e20998526808d6da9e2022f3e8e3bd1e70e0b92ed94a192b82e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784824164-g9bdb69/amp-linux-arm64"
      sha256 "da9d4706d6dd039f2ef8cf708b09b937f52f103497da0d9a3c54219402ee3a14"
    else
      url "https://static.ampcode.com/cli/0.0.1784824164-g9bdb69/amp-linux-x64"
      sha256 "69e9170f6f52e92e48dc45c9207bb0ec7eced57512e0679cb91ac600a0ba595f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
