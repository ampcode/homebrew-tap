class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779063447-g094dfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779063447-g094dfb/amp-darwin-arm64"
      sha256 "067960b9dd347c4495c20ed64d5a6c9d890e61295ae6f900e669cf7aacb07761"
    else
      url "https://static.ampcode.com/cli/0.0.1779063447-g094dfb/amp-darwin-x64"
      sha256 "8dd4d2a13511695969f9e3504385bc0c61ccb60cb93bd8b77e1973ab3fa0c6cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779063447-g094dfb/amp-linux-arm64"
      sha256 "e7509b96e8b2a86cc9a49d245e1146780d31332d362120bd645ae9be98feb152"
    else
      url "https://static.ampcode.com/cli/0.0.1779063447-g094dfb/amp-linux-x64"
      sha256 "8d312bebcd73a0de295f075663fc9cd33969612b3d1e7c0c90d5c8a0c43aeef8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
