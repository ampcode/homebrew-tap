class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781711870-g4b29d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781711870-g4b29d4/amp-darwin-arm64"
      sha256 "91eb0d1c312cadc07dd2e501438762c314aab86595bc5deca4fe2dd5f78b3e6c"
    else
      url "https://static.ampcode.com/cli/0.0.1781711870-g4b29d4/amp-darwin-x64"
      sha256 "3d78ecc94a8932aa1b0d8ef6cadc69cb78625612a5df6b93524766b98e6283d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781711870-g4b29d4/amp-linux-arm64"
      sha256 "032e66558d00e2b9334b60664b214df84bbcb3a505ac70c01dc8015a6c8c2250"
    else
      url "https://static.ampcode.com/cli/0.0.1781711870-g4b29d4/amp-linux-x64"
      sha256 "7f03c71743cbd8ba34302a72b96e371250229e7153fbc61c26a7a7293d5fc189"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
