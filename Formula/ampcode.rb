class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774672496-g0342e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774672496-g0342e2/amp-darwin-arm64"
      sha256 "ec48a5782cbdd6ce579c2d4627a61befd167b1811c92215fe55a73da7f784c92"
    else
      url "https://static.ampcode.com/cli/0.0.1774672496-g0342e2/amp-darwin-x64"
      sha256 "557f1f36a055a7f75abe1d0c4140e6460f80fb52a4ea56b0fa1de407c13b9de4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774672496-g0342e2/amp-linux-arm64"
      sha256 "0a564ca77b608cb9cf1bdd77cd09106810f69a55c183ce8c485f2ead33454262"
    else
      url "https://static.ampcode.com/cli/0.0.1774672496-g0342e2/amp-linux-x64"
      sha256 "6b5f48aea0ef904b57b7e575c2bc25a6bf4f9b56baa05e345bab483bf1b97f7d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
