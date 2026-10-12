class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791817758-g24a572"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791817758-g24a572/amp-darwin-arm64"
      sha256 "a06119dd26c21c63296d54925050c902f00e0a180aa21bada2298421adc5a7eb"
    else
      url "https://static.ampcode.com/cli/0.0.1791817758-g24a572/amp-darwin-x64"
      sha256 "58418b100b85a260072d8dffa744214fdcebdcfed54a5e074c8521ee39e1024e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791817758-g24a572/amp-linux-arm64"
      sha256 "0c973bed9bc2eb1f631040ac06927191450f1865e003c36813831698053a1dbf"
    else
      url "https://static.ampcode.com/cli/0.0.1791817758-g24a572/amp-linux-x64"
      sha256 "1f854e4a9ab495c2951e809d3919624dd388b50ea0b3673d7a08c2d688f3d4cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
