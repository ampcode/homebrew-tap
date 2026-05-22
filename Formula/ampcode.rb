class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779453684-ga69698"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779453684-ga69698/amp-darwin-arm64"
      sha256 "2e7a31bdd0b0576180115dd1ab69816072ab0388b3a31d9ce242e389f933d250"
    else
      url "https://static.ampcode.com/cli/0.0.1779453684-ga69698/amp-darwin-x64"
      sha256 "718547b876ce65e86ce16bfa659831056964a572c54022c320cb2fee763b1077"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779453684-ga69698/amp-linux-arm64"
      sha256 "72e28f2e26bec96f5eda2933b20f265cf791fba297a67e6bb928be6a588246dc"
    else
      url "https://static.ampcode.com/cli/0.0.1779453684-ga69698/amp-linux-x64"
      sha256 "d897fc6f2a63f25ce49c0015d6b0fef2ec31aa9ff47eeb9379388c9c3aff9004"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
