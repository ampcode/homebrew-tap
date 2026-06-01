class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780336675-gf27daa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780336675-gf27daa/amp-darwin-arm64"
      sha256 "d6dbea3fee5fe9ef47bb23c1133648f91ae3d89fca3451fbd4ac92c4af949415"
    else
      url "https://static.ampcode.com/cli/0.0.1780336675-gf27daa/amp-darwin-x64"
      sha256 "842d0552b9a81653e6f3bf68f41094988a1dbbb3b3149a00932376a0205f3e4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780336675-gf27daa/amp-linux-arm64"
      sha256 "4d32a3c4bb6dbd869d736bc51aa47cf528b3363d7562a472d0835ecba4b99106"
    else
      url "https://static.ampcode.com/cli/0.0.1780336675-gf27daa/amp-linux-x64"
      sha256 "6856d4c9c2e41326deebb24c823f4680576461e89a8a1be2bfe65ff8f83eaff9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
