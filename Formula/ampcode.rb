class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793736138-gdba311"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793736138-gdba311/amp-darwin-arm64"
      sha256 "3200871e6e80eff843c9ce8fb746253a4f30e58f5c22ed82ff46cb4f552729fc"
    else
      url "https://static.ampcode.com/cli/0.0.1793736138-gdba311/amp-darwin-x64"
      sha256 "f5d0ac0710ef538558e4b0543de5c080383b379f2f55e5f9f24509b46a522092"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793736138-gdba311/amp-linux-arm64"
      sha256 "90ce3b549dcfaba4a3d14035d98d13550f1ee7eaa11c6bbe4bd3e2fb7d9d0232"
    else
      url "https://static.ampcode.com/cli/0.0.1793736138-gdba311/amp-linux-x64"
      sha256 "ea6cb1d4b35d92400f1d59ebeea17949a185719e7abec05024b2565aa7c33e8a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
